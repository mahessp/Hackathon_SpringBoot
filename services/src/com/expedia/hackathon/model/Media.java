package com.expedia.hackathon.model;

/**
 * Created by msp on 9/26/17.
 */
public class Media
{
    private Criteria criteria;

    public Criteria getCriteria ()
    {
        return criteria;
    }

    public void setCriteria (Criteria criteria)
    {
        this.criteria = criteria;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [criteria = "+criteria+"]";
    }
}
