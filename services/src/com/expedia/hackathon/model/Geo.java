package com.expedia.hackathon.model;

/**
 * Created by msp on 9/26/17.
 */
public class Geo
{
    private String gaiaId;

    public String getGaiaId ()
    {
        return gaiaId;
    }

    public void setGaiaId (String gaiaId)
    {
        this.gaiaId = gaiaId;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [gaiaId = "+gaiaId+"]";
    }
}
