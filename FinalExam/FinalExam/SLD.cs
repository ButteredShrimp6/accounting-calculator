using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FinalExam
{
    [Activity(Label = "SLD")]
    public class SLD : Activity
    {
        TextView SLD_Text;
        EditText SLD_Cost, SLD_Value, SLD_Life;
        Button SLD_Button;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.SLD);

            SLD_Text = FindViewById<TextView>(Resource.Id.textView2);
            SLD_Cost = FindViewById<EditText>(Resource.Id.editText1);
            SLD_Value = FindViewById<EditText>(Resource.Id.editText2);
            SLD_Life = FindViewById<EditText>(Resource.Id.editText3);
            SLD_Button = FindViewById<Button>(Resource.Id.SLDBtn);

            SLD_Button.Click += SLD_Button_Click;
        }

        private void SLD_Button_Click(object sender, EventArgs e)
        {
            if (float.TryParse(SLD_Cost.Text, out var outParse))
            {
                // what it will do if numeric
                float cost = float.Parse(SLD_Cost.Text);
                float val = float.Parse(SLD_Value.Text);
                float life = float.Parse(SLD_Life.Text);
                Computation.AccountancyComputations cb = new Computation.AccountancyComputations();
                float answer = cb.straightLineDepreciation(cost, val, life);
                SLD_Text.Text = answer.ToString();
            }
            else
            {
                // what it will do if non numeric
                Android.App.AlertDialog.Builder builder = new Android.App.AlertDialog.Builder(this);
                builder.SetTitle("Notice");
                builder.SetMessage("Value is not a number. Input a valid number to proceed.  ");
                builder.SetPositiveButton("OK", delegate
                {
                    builder.Dispose();
                });
                builder.Show();
            }

        }
        //float cost = float.Parse(SLD_Cost.Text);
        //float val = float.Parse(SLD_Value.Text);
        //float life = float.Parse(SLD_Life.Text);
        //Computation.AccountancyComputations cb = new Computation.AccountancyComputations();
        //float answer = cb.straightLineDepreciation(cost, val, life);
        //SLD_Text.Text = answer.ToString();
    }
    
}