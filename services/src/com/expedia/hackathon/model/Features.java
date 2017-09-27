package com.expedia.hackathon.model;

/**
 * Created by msp on 9/26/17.
 */
public class Features
{
    private Must[] must;

    public Must[] getMust ()
    {
        return must;
    }

    public void setMust (Must[] must)
    {
        this.must = must;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [must = "+must+"]";
    }
}
