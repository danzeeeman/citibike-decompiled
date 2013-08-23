.class public Lcom/citibikenyc/citibike/SettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DISTANCE_IN_MILES:Ljava/lang/String; = "DISTANCE_IN_MILES"

.field public static DISTANCE_KM:Z = false

.field public static DISTANCE_MI:Z = false

.field public static MEMBERSHIP_7DAY:Z = false

.field public static MEMBERSHIP_ANNUAL:Z = false

.field public static final MEMBERSHIP_IS_7DAY:Ljava/lang/String; = "MEMBERSHIP_IS_7DAY"

.field public static SETTINGS_DISTANCE:I = 0x0

.field public static SETTINGS_MEMBERSHIP:I = 0x0

.field public static final SETTINGS_PREFS:Ljava/lang/String; = "SETTINGS_PREFS"

.field public static SETTINGS_THREED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SettingsFragment"

.field public static final THREED_MODE_ON:Ljava/lang/String; = "THREED_MODE_ON"

.field public static THREED_OFF:Z

.field public static THREED_ON:Z


# instance fields
.field private settings:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    sput v1, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    .line 26
    sput v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    .line 29
    sput-boolean v2, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_7DAY:Z

    .line 30
    sput-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_ANNUAL:Z

    .line 31
    sput-boolean v2, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_MI:Z

    .line 32
    sput-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_KM:Z

    .line 33
    sput-boolean v2, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_ON:Z

    .line 34
    sput-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_OFF:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    .line 17
    return-void
.end method

.method private updateToggle(IIZ)V
    .locals 10
    .parameter "leftButtonId"
    .parameter "rightButtonId"
    .parameter "toggleState"

    .prologue
    const v9, 0x7f07000f

    const v8, 0x7f07000e

    .line 133
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    .local v0, leftButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 135
    .local v4, rightButton:Landroid/widget/Button;
    const/4 v2, 0x0

    .line 136
    .local v2, onLeftDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 140
    .local v3, onRightDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020121

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020122

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 143
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 144
    .local v1, leftColor:I
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 152
    .local v5, rightColor:I
    :goto_0
    invoke-static {v0, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 155
    invoke-static {v4, v3}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 157
    return-void

    .line 146
    .end local v1           #leftColor:I
    .end local v5           #rightColor:I
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020120

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 147
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020123

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 148
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 149
    .restart local v1       #leftColor:I
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .restart local v5       #rightColor:I
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "SETTINGS_PREFS"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 71
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 73
    .local v3, prefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v6, v6, v9

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v7, v8

    .line 77
    const v6, 0x7f0500c8

    const v7, 0x7f0500c9

    iget-object v8, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v8, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 80
    const-string v6, "MEMBERSHIP_IS_7DAY"

    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v7, v7, v8

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_1

    .line 85
    const v6, 0x7f0a011f

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, membershipLabel:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    const-string v9, "Settings-Membership"

    const-string v10, "Modify"

    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x1

    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v9, v10, v2, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 76
    .end local v2           #membershipLabel:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 86
    :cond_1
    const v6, 0x7f0a0120

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 88
    .restart local v2       #membershipLabel:Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 93
    .end local v2           #membershipLabel:Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v6, v6, v9

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    :goto_4
    aput-boolean v6, v7, v8

    .line 94
    const v6, 0x7f0500ca

    const v7, 0x7f0500cb

    iget-object v8, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v8, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 97
    const-string v6, "DISTANCE_IN_MILES"

    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v7, v7, v8

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_4

    .line 102
    const v6, 0x7f0a0122

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, distanceLabel:Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    const-string v9, "Settings-Distance"

    const-string v10, "Modify"

    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_5

    const-wide/16 v6, 0x1

    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v9, v10, v1, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 93
    .end local v1           #distanceLabel:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_4

    .line 103
    :cond_4
    const v6, 0x7f0a0123

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 105
    .restart local v1       #distanceLabel:Ljava/lang/String;
    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_6

    .line 110
    .end local v1           #distanceLabel:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v6, v6, v9

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    :goto_7
    aput-boolean v6, v7, v8

    .line 111
    const v6, 0x7f0500cc

    const v7, 0x7f0500cd

    iget-object v8, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v8, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 114
    const-string v6, "THREED_MODE_ON"

    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v7, v7, v8

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/MainActivity;

    .line 119
    .local v0, activity:Lcom/citibikenyc/citibike/MainActivity;
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/citibikenyc/citibike/MainActivity;->enableThreedMode(Z)V

    .line 122
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_7

    .line 123
    const v6, 0x7f0a0125

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, threeDLabel:Ljava/lang/String;
    :goto_8
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    const-string v9, "Settings-3D"

    const-string v10, "Modify"

    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x1

    :goto_9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v9, v10, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 110
    .end local v0           #activity:Lcom/citibikenyc/citibike/MainActivity;
    .end local v5           #threeDLabel:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    goto :goto_7

    .line 124
    .restart local v0       #activity:Lcom/citibikenyc/citibike/MainActivity;
    :cond_7
    const v6, 0x7f0a0126

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 126
    .restart local v5       #threeDLabel:Ljava/lang/String;
    :cond_8
    const-wide/16 v6, 0x0

    goto :goto_9

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f0500c8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 40
    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0500c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setButtonClickHandler(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)V

    .line 45
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 51
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->updateSettings()V

    .line 52
    return-void
.end method

.method public updateSettings()V
    .locals 5

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SETTINGS_PREFS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    const-string v3, "MEMBERSHIP_IS_7DAY"

    sget-boolean v4, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_7DAY:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 59
    iget-object v1, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    const-string v3, "DISTANCE_IN_MILES"

    sget-boolean v4, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_MI:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 60
    iget-object v1, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    const-string v3, "THREED_MODE_ON"

    sget-boolean v4, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_ON:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 63
    const v1, 0x7f0500c8

    const v2, 0x7f0500c9

    iget-object v3, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v4, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 64
    const v1, 0x7f0500ca

    const v2, 0x7f0500cb

    iget-object v3, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v4, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 65
    const v1, 0x7f0500cc

    const v2, 0x7f0500cd

    iget-object v3, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v4, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 66
    return-void
.end method
