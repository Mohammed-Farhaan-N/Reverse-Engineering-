.class public final synthetic Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment$$ExternalSyntheticLambda14;->f$0:Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment$$ExternalSyntheticLambda14;->f$0:Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/emanuelef/remote_capture/activities/prefs/SettingsActivity$SettingsFragment;->lambda$setupCapturePrefs$5$com-emanuelef-remote_capture-activities-prefs-SettingsActivity$SettingsFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
