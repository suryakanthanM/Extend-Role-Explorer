pageextension 50600 RoleExt extends "Business Manager Role Center"
{


    actions
    {
        addfirst(embedding)
        {
            action("Get customer")
            {
                Caption = 'Go to custList';
                ApplicationArea = ALl;
                RunObject = page "Customer List";
            }
        }
        addfirst(sections)
        {
            group(RoleExt)
            {
                caption = 'New Role Group';
                action(Get_Vendor)
                {
                    caption = 'Go to vendList';
                    ApplicationArea = All;
                    RunObject = page "Vendor List";

                }
            }
        }

    }


}

profile New_Profile
{
    caption = 'New_Profile';
    RoleCenter = "New RoleCenter";

}
page 50602 "New RoleCenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Embedding)
        {

            action(Get_Vendor)
            {
                caption = 'Go to vendList';
                ApplicationArea = All;
                RunObject = page "Vendor List";

            }

        }
    }


}

