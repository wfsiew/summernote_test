﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void timerAutoSaveDraft_Tick(object sender, EventArgs e)
    {
        this.lblDraft.Text = editorBody.InnerHtml;
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        this.lblDraft.Text = editorBody.InnerHtml;
    }
}