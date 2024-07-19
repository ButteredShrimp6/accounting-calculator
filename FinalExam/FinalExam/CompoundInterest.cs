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
    [Activity(Label = "CompoundInterest")]
    public class CompoundInterest : Activity
    {
        EditText principal, rate, Time, numofInterest;
        Button CI_button;
        TextView CI_text;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.CompoundInterest);
            principal = FindViewById<EditText>(Resource.Id.editText1);
            rate = FindViewById<EditText>(Resource.Id.editText3);
            Time = FindViewById<EditText>(Resource.Id.editText4);
            numofInterest = FindViewById<EditText>(Resource.Id.editText5);
            CI_text = FindViewById<TextView>(Resource.Id.textView2);
            CI_button = FindViewById<Button>(Resource.Id.CIbtn);

            CI_button.Click += CI_button_Click;
        }

        private void CI_button_Click(object sender, EventArgs e)
        {
            float principal1 = float.Parse(principal.Text);
            float Rate = float.Parse(rate.Text);
            float time = float.Parse(Time.Text);
            float noi = float.Parse(numofInterest.Text);
            Computation.AccountancyComputations cb = new Computation.AccountancyComputations();
              float answer  = cb.CompoundInterest(principal1, Rate, time, noi);
            CI_text.Text = answer.ToString();
            //CI_text.Text = "Yey! it works";
        }
    }
}