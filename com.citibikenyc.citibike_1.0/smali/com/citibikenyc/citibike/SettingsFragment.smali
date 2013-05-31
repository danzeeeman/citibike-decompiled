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

    .line 26
    sput v1, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    .line 27
    sput v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    .line 30
    sput-boolean v2, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_7DAY:Z

    .line 31
    sput-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_ANNUAL:Z

    .line 32
    sput-boolean v2, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_MI:Z

    .line 33
    sput-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_KM:Z

    .line 34
    sput-boolean v2, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_ON:Z

    .line 35
    sput-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_OFF:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    .line 18
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

    .line 137
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 138
    .local v0, leftButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 139
    .local v4, rightButton:Landroid/widget/Button;
    const/4 v2, 0x0

    .line 140
    .local v2, onLeftDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 144
    .local v3, onRightDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020106

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020107

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 147
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 148
    .local v1, leftColor:I
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 156
    .local v5, rightColor:I
    :goto_0
    invoke-static {v0, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 159
    invoke-static {v4, v3}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 161
    return-void

    .line 150
    .end local v1           #leftColor:I
    .end local v5           #rightColor:I
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020105

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 151
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020108

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 153
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
    .line 73
    const-string v6, "SettingsFragment"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "SETTINGS_PREFS"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 75
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 77
    .local v3, prefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 80
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

    .line 81
    const v6, 0x7f0500ac

    const v7, 0x7f0500ad

    iget-object v8, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v8, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 84
    const-string v6, "MEMBERSHIP_IS_7DAY"

    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v7, v7, v8

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_1

    .line 89
    const v6, 0x7f0a0115

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
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

    .line 80
    .end local v2           #membershipLabel:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 90
    :cond_1
    const v6, 0x7f0a0116

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 92
    .restart local v2       #membershipLabel:Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 97
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

    .line 98
    const v6, 0x7f0500ae

    const v7, 0x7f0500af

    iget-object v8, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v8, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 101
    const-string v6, "DISTANCE_IN_MILES"

    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v7, v7, v8

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_4

    .line 106
    const v6, 0x7f0a0118

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
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

    .line 97
    .end local v1           #distanceLabel:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_4

    .line 107
    :cond_4
    const v6, 0x7f0a0119

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 109
    .restart local v1       #distanceLabel:Ljava/lang/String;
    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_6

    .line 114
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

    .line 115
    const v6, 0x7f0500b0

    const v7, 0x7f0500b1

    iget-object v8, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v9, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v8, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 118
    const-string v6, "THREED_MODE_ON"

    iget-object v7, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v8, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v7, v7, v8

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/MainActivity;

    .line 123
    .local v0, activity:Lcom/citibikenyc/citibike/MainActivity;
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/citibikenyc/citibike/MainActivity;->enableThreedMode(Z)V

    .line 126
    iget-object v6, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v7, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_7

    .line 127
    const v6, 0x7f0a011b

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 130
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

    .line 114
    .end local v0           #activity:Lcom/citibikenyc/citibike/MainActivity;
    .end local v5           #threeDLabel:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    goto :goto_7

    .line 128
    .restart local v0       #activity:Lcom/citibikenyc/citibike/MainActivity;
    :cond_7
    const v6, 0x7f0a011c

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 130
    .restart local v5       #threeDLabel:Ljava/lang/String;
    :cond_8
    const-wide/16 v6, 0x0

    goto :goto_9

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x7f0500ac
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
    .line 41
    const-string v1, "SettingsFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const v1, 0x7f030040

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0500ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setButtonClickHandler(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)V

    .line 47
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 53
    const-string v0, "SettingsFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->updateSettings()V

    .line 55
    return-void
.end method

.method public updateSettings()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SETTINGS_PREFS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    const-string v3, "MEMBERSHIP_IS_7DAY"

    sget-boolean v4, Lcom/citibikenyc/citibike/SettingsFragment;->MEMBERSHIP_7DAY:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 62
    iget-object v1, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    const-string v3, "DISTANCE_IN_MILES"

    sget-boolean v4, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_MI:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 63
    iget-object v1, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v2, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    const-string v3, "THREED_MODE_ON"

    sget-boolean v4, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_ON:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 66
    const v1, 0x7f0500ac

    const v2, 0x7f0500ad

    iget-object v3, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v4, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_MEMBERSHIP:I

    aget-boolean v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 67
    const v1, 0x7f0500ae

    const v2, 0x7f0500af

    iget-object v3, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v4, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_DISTANCE:I

    aget-boolean v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 68
    const v1, 0x7f0500b0

    const v2, 0x7f0500b1

    iget-object v3, p0, Lcom/citibikenyc/citibike/SettingsFragment;->settings:[Z

    sget v4, Lcom/citibikenyc/citibike/SettingsFragment;->SETTINGS_THREED:I

    aget-boolean v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/citibikenyc/citibike/SettingsFragment;->updateToggle(IIZ)V

    .line 69
    return-void
.end method
