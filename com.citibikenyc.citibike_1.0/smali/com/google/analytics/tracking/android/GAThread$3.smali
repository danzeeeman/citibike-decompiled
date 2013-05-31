.class Lcom/google/analytics/tracking/android/GAThread$3;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->setAppOptOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;

.field final synthetic val$appOptOut:Z


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/GAThread$3;->val$appOptOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 279
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$100(Lcom/google/analytics/tracking/android/GAThread;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread$3;->val$appOptOut:Z

    if-ne v2, v3, :cond_0

    .line 296
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-boolean v2, p0, Lcom/google/analytics/tracking/android/GAThread$3;->val$appOptOut:Z

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$1100(Lcom/google/analytics/tracking/android/GAThread;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "gaOptOut"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 286
    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$1000(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/ServiceProxy;->clearHits()V

    .line 295
    .end local v1           #f:Ljava/io/File;
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread$3;->val$appOptOut:Z

    #setter for: Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z
    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/GAThread;->access$102(Lcom/google/analytics/tracking/android/GAThread;Z)Z

    goto :goto_0

    .line 287
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Error creating optOut file."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_1

    .line 293
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$3;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$1100(Lcom/google/analytics/tracking/android/GAThread;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "gaOptOut"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_2
.end method
