.class public Lcom/citibikenyc/citibike/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/ViewServer$NoopViewServer;,
        Lcom/citibikenyc/citibike/ViewServer$UncloseableOuputStream;,
        Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;,
        Lcom/citibikenyc/citibike/ViewServer$WindowListener;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field private static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa

.field private static sServer:Lcom/citibikenyc/citibike/ViewServer;


# instance fields
.field private final mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mFocusedWindow:Landroid/view/View;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/ViewServer$WindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mListeners:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mPort:I

    .line 189
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "port"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mListeners:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 200
    iput p1, p0, Lcom/citibikenyc/citibike/ViewServer;->mPort:I

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Lcom/citibikenyc/citibike/ViewServer;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/citibikenyc/citibike/ViewServer;-><init>()V

    return-void
.end method

.method static synthetic access$1(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-static {p0, p1}, Lcom/citibikenyc/citibike/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/ViewServer;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusedWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$6(Lcom/citibikenyc/citibike/ViewServer;Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/ViewServer;->addWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V

    return-void
.end method

.method static synthetic access$7(Lcom/citibikenyc/citibike/ViewServer;Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/ViewServer;->removeWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V

    return-void
.end method

.method private addWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    return-void
.end method

.method private fireFocusChangedEvent()V
    .locals 3

    .prologue
    .line 440
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    return-void

    .line 440
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/ViewServer$WindowListener;

    .line 441
    .local v0, listener:Lcom/citibikenyc/citibike/ViewServer$WindowListener;
    invoke-interface {v0}, Lcom/citibikenyc/citibike/ViewServer$WindowListener;->focusChanged()V

    goto :goto_0
.end method

.method private fireWindowsChangedEvent()V
    .locals 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    return-void

    .line 434
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/ViewServer$WindowListener;

    .line 435
    .local v0, listener:Lcom/citibikenyc/citibike/ViewServer$WindowListener;
    invoke-interface {v0}, Lcom/citibikenyc/citibike/ViewServer$WindowListener;->windowsChanged()V

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lcom/citibikenyc/citibike/ViewServer;
    .locals 4
    .parameter "context"

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 167
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    const-string v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 169
    sget-object v2, Lcom/citibikenyc/citibike/ViewServer;->sServer:Lcom/citibikenyc/citibike/ViewServer;

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Lcom/citibikenyc/citibike/ViewServer;

    const/16 v3, 0x134b

    invoke-direct {v2, v3}, Lcom/citibikenyc/citibike/ViewServer;-><init>(I)V

    sput-object v2, Lcom/citibikenyc/citibike/ViewServer;->sServer:Lcom/citibikenyc/citibike/ViewServer;

    .line 173
    :cond_0
    sget-object v2, Lcom/citibikenyc/citibike/ViewServer;->sServer:Lcom/citibikenyc/citibike/ViewServer;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :try_start_0
    sget-object v2, Lcom/citibikenyc/citibike/ViewServer;->sServer:Lcom/citibikenyc/citibike/ViewServer;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    sget-object v2, Lcom/citibikenyc/citibike/ViewServer;->sServer:Lcom/citibikenyc/citibike/ViewServer;

    return-object v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ViewServer"

    const-string v3, "Error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    new-instance v2, Lcom/citibikenyc/citibike/ViewServer$NoopViewServer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/citibikenyc/citibike/ViewServer$NoopViewServer;-><init>(Lcom/citibikenyc/citibike/ViewServer$NoopViewServer;)V

    sput-object v2, Lcom/citibikenyc/citibike/ViewServer;->sServer:Lcom/citibikenyc/citibike/ViewServer;

    goto :goto_0
.end method

.method private removeWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 7
    .parameter "client"
    .parameter "value"

    .prologue
    .line 411
    const/4 v2, 0x0

    .line 413
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 414
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 416
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 418
    const/4 v4, 0x1

    .line 422
    .local v4, result:Z
    if-eqz v3, :cond_2

    .line 424
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 430
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .line 419
    .end local v4           #result:Z
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    .line 422
    .restart local v4       #result:Z
    if-eqz v2, :cond_0

    .line 424
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 425
    :catch_1
    move-exception v1

    .line 426
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_0

    .line 421
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    .line 422
    :goto_2
    if-eqz v2, :cond_1

    .line 424
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 429
    :cond_1
    :goto_3
    throw v5

    .line 425
    :catch_2
    move-exception v1

    .line 426
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_3

    .line 425
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :catch_3
    move-exception v1

    .line 426
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v4, 0x0

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 421
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v4           #result:Z
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 419
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_2
    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/citibikenyc/citibike/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 305
    return-void

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "name"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 334
    invoke-direct {p0}, Lcom/citibikenyc/citibike/ViewServer;->fireWindowsChangedEvent()V

    .line 335
    return-void

    .line 331
    :catchall_0
    move-exception v0

    .line 332
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 333
    throw v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/ViewServer;->removeWindow(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 351
    invoke-direct {p0}, Lcom/citibikenyc/citibike/ViewServer;->fireWindowsChangedEvent()V

    .line 352
    return-void

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 350
    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 385
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    iget v3, p0, Lcom/citibikenyc/citibike/ViewServer;->mPort:I

    const/16 v4, 0xa

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mServer:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_1

    .line 407
    :cond_0
    return-void

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ViewServer"

    const-string v3, "Starting ServerSocket error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 393
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 394
    .local v0, client:Ljava/net/Socket;
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_2

    .line 395
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;

    invoke-direct {v3, p0, v0}, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;-><init>(Lcom/citibikenyc/citibike/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 403
    .end local v0           #client:Ljava/net/Socket;
    :catch_1
    move-exception v1

    .line 404
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "ViewServer"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 398
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Ljava/net/Socket;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 399
    :catch_2
    move-exception v1

    .line 400
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    .line 362
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 373
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 377
    invoke-direct {p0}, Lcom/citibikenyc/citibike/ViewServer;->fireFocusChangedEvent()V

    .line 378
    return-void

    .line 373
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    .line 375
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 376
    throw v0
.end method

.method public start()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Local View Server [port="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    .line 219
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 220
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 238
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/citibikenyc/citibike/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 247
    iput-object v3, p0, Lcom/citibikenyc/citibike/ViewServer;->mThread:Ljava/lang/Thread;

    .line 250
    :try_start_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    const/4 v1, 0x1

    .line 272
    :goto_1
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "ViewServer"

    const-string v2, "Could not stop all view server threads"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ViewServer"

    const-string v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 260
    :try_start_2
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 265
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 267
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 272
    const/4 v1, 0x0

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v1

    .line 262
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 263
    throw v1

    .line 268
    :catchall_1
    move-exception v1

    .line 269
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 270
    throw v1
.end method
