package com.expedia.hackathon.controller;


import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.expedia.hackathon.model.Criteria;
import com.expedia.hackathon.model.Features;
import com.expedia.hackathon.model.Geo;
import com.expedia.hackathon.model.Media;
import com.expedia.hackathon.model.MediaResponse;
import com.expedia.hackathon.model.Must;

/**
 * Created by msp on 9/26/17.
 */
@SpringBootApplication
@Controller
//@PropertySource("classpath:/application.properties")
public class RestController {

    @Value("${mediaService.url}")
    private String mediaServiceUrl;

    @Autowired
    RestTemplate restTemplate;

    @RequestMapping(path="/Mediaservice", method = RequestMethod.GET)
    public @ResponseBody
    MediaResponse mediaService(@RequestParam(value="gaiaId") String gaiaId) {

        return postMediaService(gaiaId);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(RestController.class, args);
    }


    private MediaResponse postMediaService(String gaiaId) {
        MultiValueMap<String, String> headers = new LinkedMultiValueMap<String, String>();
        headers.add("key",  "4f8ce657-ee06-4527-a8d8-4b207f8f0d62");
        headers.add("Content-Type", "application/json");
        HttpEntity<Media> request = new HttpEntity<Media>(populateMedia(gaiaId), headers);
        String data =  restTemplate.postForObject(mediaServiceUrl, request, String.class);
        MediaResponse response = new MediaResponse();
        response.setResponse(data);
        return response;
    }


    private Must[] getMust() {
        Must must= new Must();
        must.setCriterion("google_vision:park");
        must.setType("LABEL");
        Must[] musts = { must};
        return musts;
    }

    private Geo getGeoObject(String gaiaId) {
        Geo geo =  new Geo();
        geo.setGaiaId(gaiaId);
        return geo;
    }

    private Media populateMedia(String gaiaId) {
        Features features = new Features();
        features.setMust(getMust());

        Criteria criteria = new Criteria();
        criteria.setGeo(getGeoObject(gaiaId));
        criteria.setFeatures(features);

        Media media = new Media();
        media.setCriteria(criteria);
        return media;
    }

    /*@Bean
    public RestTemplate transferService() {
        TrustStrategy acceptingTrustStrategy = new TrustStrategy() {
            @Override
            public boolean isTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {
                return true;
            }
        };
        SSLContext sslContext = org.apache.http.ssl.SSLContexts.custom().loadTrustMaterial(null, acceptingTrustStrategy).build();
        SSLConnectionSocketFactory csf = new SSLConnectionSocketFactory(sslContext, new NoopHostnameVerifier());
        CloseableHttpClient httpClient = HttpClients.custom().setSSLSocketFactory(csf).build();
        HttpComponentsClientHttpRequestFactory requestFactory = new HttpComponentsClientHttpRequestFactory();
        requestFactory.setHttpClient(httpClient);

        RestTemplate restTemplate = new RestTemplate();
        restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
        return restTemplate;
    }*/


    @Bean
    public RestTemplate restTemplate()
            throws KeyStoreException, NoSuchAlgorithmException, KeyManagementException {
       /* TrustStrategy acceptingTrustStrategy = (X509Certificate[] chain, String authType) -> true;

        SSLContext sslContext = org.apache.http.ssl.SSLContexts.custom()
                .loadTrustMaterial(acceptingTrustStrategy)
                .build();
        */
        ;

        SSLConnectionSocketFactory csf = new SSLConnectionSocketFactory(trustSelfSignedSSL(), SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);

        CloseableHttpClient httpClient = HttpClients.custom()
                .setSSLSocketFactory(csf)
                .build();

        HttpComponentsClientHttpRequestFactory requestFactory =
                new HttpComponentsClientHttpRequestFactory();

        requestFactory.setHttpClient(httpClient);
        RestTemplate restTemplate = new RestTemplate(requestFactory);
        restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
        return restTemplate;
    }


    public static SSLContext trustSelfSignedSSL() {
        try {
            SSLContext ctx = SSLContext.getInstance("TLS");
            X509TrustManager tm = new X509TrustManager() {

                public void checkClientTrusted(X509Certificate[] xcs, String string) throws CertificateException {
                }

                public void checkServerTrusted(X509Certificate[] xcs, String string) throws CertificateException {
                }

                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
            };
            ctx.init(null, new TrustManager[]{tm}, null);
            SSLContext.setDefault(ctx);
            return ctx;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


}
