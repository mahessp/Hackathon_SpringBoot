package com.expedia.hackathon.model;

/**
 * Created by msp on 9/26/17.
 */
public class Must
{
    private String criterion;

    private String type;

    public String getCriterion ()
    {
        return criterion;
    }

    public void setCriterion (String criterion)
    {
        this.criterion = criterion;
    }

    public String getType ()
    {
        return type;
    }

    public void setType (String type)
    {
        this.type = type;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [criterion = "+criterion+", type = "+type+"]";
    }
}
