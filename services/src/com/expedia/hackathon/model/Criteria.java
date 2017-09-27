package com.expedia.hackathon.model;

/**
 * Created by msp on 9/26/17.
 */
public class Criteria
{
    private Geo geo;

    private Features features;

    public Geo getGeo ()
    {
        return geo;
    }

    public void setGeo (Geo geo)
    {
        this.geo = geo;
    }

    public Features getFeatures ()
    {
        return features;
    }

    public void setFeatures (Features features)
    {
        this.features = features;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [geo = "+geo+", features = "+features+"]";
    }
}
