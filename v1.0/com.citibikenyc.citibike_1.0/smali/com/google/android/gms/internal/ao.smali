.class public Lcom/google/android/gms/internal/ao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ao$1;,
        Lcom/google/android/gms/internal/ao$a;
    }
.end annotation


# instance fields
.field private bA:Landroid/os/Bundle;

.field private bB:Ljava/lang/String;

.field private bC:Ljava/lang/String;

.field private bD:Landroid/content/Intent;

.field private bE:Ljava/lang/String;

.field private bF:Z

.field private bG:I

.field bx:Lcom/google/android/gms/internal/ao$a;

.field private by:Landroid/accounts/Account;

.field private bz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ao$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ao$a;-><init>(Lcom/google/android/gms/internal/ao$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bx:Lcom/google/android/gms/internal/ao$a;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/gms/internal/ao;->bG:I

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ao;->bz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ao;->bA:Landroid/os/Bundle;

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->by:Landroid/accounts/Account;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "session"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bB:Ljava/lang/String;

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bC:Ljava/lang/String;

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    const-string v0, "userRecoveryIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    const-string v0, "handle_notification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ao;->bF:Z

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bC:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "BadAuthentication"

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CaptchaRequired"

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "DeviceManagementRequiredOrSyncDisabled"

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NeedPermission"

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NeedsBrowser"

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "UserCancel"

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "AppDownloadRequired"

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->by:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->by:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".android.gms.auth.TokenActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x10000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->by:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    const-string v1, "service"

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    const-string v1, "callerExtras"

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bA:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    return-object v0
.end method

.method public hasHardError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bC:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ao;->H()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ao;->hasSoftError()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftError()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ao;->bC:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "NetworkError"

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ServiceUnavailable"

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Timeout"

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ao;->bC:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bC:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ao;->bD:Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ao;->bx:Lcom/google/android/gms/internal/ao$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->by:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/ao;->bG:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ao$a;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/q;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "AppDownloadRequired"

    iput-object v1, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GoogleAuthToken"

    const-string v3, "GMS remote exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "InternalError"

    iput-object v1, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bA:Landroid/os/Bundle;

    const-string v3, "androidPackageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bA:Landroid/os/Bundle;

    const-string v3, "androidPackageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->by:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ao;->bz:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ao;->bA:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ao;->a(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ao;->bx:Lcom/google/android/gms/internal/ao$a;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ao$a;->h(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ao;->bC:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ao;->bx:Lcom/google/android/gms/internal/ao$a;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ao$a;->h(Landroid/content/Context;)V

    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted"

    iput-object v1, p0, Lcom/google/android/gms/internal/ao;->bE:Ljava/lang/String;

    goto :goto_0
.end method
