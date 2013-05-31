.class Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/citibikenyc/citibike/ViewServer$WindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private final mLock:[Ljava/lang/Object;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/citibikenyc/citibike/ViewServer;


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/ViewServer;Ljava/net/Socket;)V
    .locals 2
    .parameter
    .parameter "client"

    .prologue
    const/4 v1, 0x0

    .line 556
    iput-object p1, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    .line 557
    iput-object p2, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 558
    iput-boolean v1, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 559
    iput-boolean v1, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 560
    return-void
.end method

.method private findWindow(I)Landroid/view/View;
    .locals 4
    .parameter "hashCode"

    .prologue
    .line 676
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 677
    const/4 v1, 0x0

    .line 678
    .local v1, window:Landroid/view/View;
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v2}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 680
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mFocusedWindow:Landroid/view/View;
    invoke-static {v2}, Lcom/citibikenyc/citibike/ViewServer;->access$3(Lcom/citibikenyc/citibike/ViewServer;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 682
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v2}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 699
    .end local v1           #window:Landroid/view/View;
    :goto_0
    return-object v1

    .line 681
    .restart local v1       #window:Landroid/view/View;
    :catchall_0
    move-exception v2

    .line 682
    iget-object v3, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v3}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 683
    throw v2

    .line 688
    .end local v1           #window:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v2}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 690
    :try_start_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/citibikenyc/citibike/ViewServer;->access$4(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 696
    iget-object v2, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v2}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 699
    const/4 v1, 0x0

    goto :goto_0

    .line 690
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 691
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 692
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 696
    iget-object v3, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v3}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v2

    .line 692
    goto :goto_0

    .line 695
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    .line 696
    iget-object v3, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v3}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 697
    throw v2
.end method

.method private getFocusedWindow(Ljava/net/Socket;)Z
    .locals 10
    .parameter "client"

    .prologue
    .line 739
    const/4 v7, 0x1

    .line 740
    .local v7, result:Z
    const/4 v3, 0x0

    .line 742
    .local v3, focusName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 744
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 745
    .local v1, clientStream:Ljava/io/OutputStream;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v6, v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 747
    .end local v5           #out:Ljava/io/BufferedWriter;
    .local v6, out:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 749
    .local v4, focusedWindow:Landroid/view/View;
    :try_start_1
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/citibikenyc/citibike/ViewServer;->access$5(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 751
    :try_start_2
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mFocusedWindow:Landroid/view/View;
    invoke-static {v8}, Lcom/citibikenyc/citibike/ViewServer;->access$3(Lcom/citibikenyc/citibike/ViewServer;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 753
    :try_start_3
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/citibikenyc/citibike/ViewServer;->access$5(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 756
    if-eqz v4, :cond_0

    .line 757
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 759
    :try_start_4
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/citibikenyc/citibike/ViewServer;->access$4(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mFocusedWindow:Landroid/view/View;
    invoke-static {v9}, Lcom/citibikenyc/citibike/ViewServer;->access$3(Lcom/citibikenyc/citibike/ViewServer;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 761
    :try_start_5
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v8}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 764
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 765
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(I)V

    .line 766
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 768
    :cond_0
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(I)V

    .line 769
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 773
    if-eqz v6, :cond_3

    .line 775
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v5, v6

    .line 782
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v4           #focusedWindow:Landroid/view/View;
    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v7

    .line 752
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #focusedWindow:Landroid/view/View;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v8

    .line 753
    :try_start_7
    iget-object v9, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v9}, Lcom/citibikenyc/citibike/ViewServer;->access$5(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 754
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 770
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 771
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v4           #focusedWindow:Landroid/view/View;
    .end local v6           #out:Ljava/io/BufferedWriter;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :goto_1
    const/4 v7, 0x0

    .line 773
    if-eqz v5, :cond_1

    .line 775
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 776
    :catch_1
    move-exception v2

    .line 777
    .local v2, e:Ljava/io/IOException;
    const/4 v7, 0x0

    goto :goto_0

    .line 760
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #focusedWindow:Landroid/view/View;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    .line 761
    :try_start_9
    iget-object v9, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v9}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 762
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 772
    :catchall_2
    move-exception v8

    move-object v5, v6

    .line 773
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v4           #focusedWindow:Landroid/view/View;
    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v5, :cond_2

    .line 775
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 780
    :cond_2
    :goto_3
    throw v8

    .line 776
    :catch_2
    move-exception v2

    .line 777
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v7, 0x0

    goto :goto_3

    .line 776
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #focusedWindow:Landroid/view/View;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v2

    .line 777
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v7, 0x0

    move-object v5, v6

    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 772
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #focusedWindow:Landroid/view/View;
    :catchall_3
    move-exception v8

    goto :goto_2

    .line 770
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #focusedWindow:Landroid/view/View;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :cond_3
    move-object v5, v6

    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private listWindows(Ljava/net/Socket;)Z
    .locals 8
    .parameter "client"

    .prologue
    .line 703
    const/4 v5, 0x1

    .line 704
    .local v5, result:Z
    const/4 v3, 0x0

    .line 707
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    iget-object v6, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v6}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 709
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 710
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 712
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v6, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindows:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/citibikenyc/citibike/ViewServer;->access$4(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 719
    const-string v6, "DONE.\n"

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    iget-object v6, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v6}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 726
    if-eqz v4, :cond_3

    .line 728
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 735
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return v5

    .line 712
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 713
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 714
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 715
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 716
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 721
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 722
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_2
    const/4 v5, 0x0

    .line 724
    iget-object v6, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v6}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 726
    if-eqz v3, :cond_0

    .line 728
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 729
    :catch_1
    move-exception v1

    .line 730
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 723
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 724
    :goto_3
    iget-object v7, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #getter for: Lcom/citibikenyc/citibike/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v7}, Lcom/citibikenyc/citibike/ViewServer;->access$2(Lcom/citibikenyc/citibike/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 726
    if-eqz v3, :cond_2

    .line 728
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 733
    :cond_2
    :goto_4
    throw v6

    .line 729
    :catch_2
    move-exception v1

    .line 730
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_4

    .line 729
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v1

    .line 730
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1

    .line 723
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 721
    .end local v0           #clientStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_3
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 621
    const/4 v8, 0x1

    .line 622
    .local v8, success:Z
    const/4 v6, 0x0

    .line 626
    .local v6, out:Ljava/io/BufferedWriter;
    const/16 v10, 0x20

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 627
    .local v5, index:I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_0

    .line 628
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 630
    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, code:Ljava/lang/String;
    const/16 v10, 0x10

    invoke-static {v1, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v4, v10

    .line 634
    .local v4, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 635
    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 640
    :goto_0
    invoke-direct {p0, v4}, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->findWindow(I)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 641
    .local v9, window:Landroid/view/View;
    if-nez v9, :cond_3

    .line 663
    if-eqz v6, :cond_1

    .line 665
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :cond_1
    :goto_1
    const/4 v10, 0x0

    .line 672
    .end local v1           #code:Ljava/lang/String;
    .end local v4           #hashCode:I
    .end local v5           #index:I
    .end local v9           #window:Landroid/view/View;
    :goto_2
    return v10

    .line 637
    .restart local v1       #code:Ljava/lang/String;
    .restart local v4       #hashCode:I
    .restart local v5       #index:I
    :cond_2
    :try_start_2
    const-string p3, ""

    goto :goto_0

    .line 666
    .restart local v9       #window:Landroid/view/View;
    :catch_0
    move-exception v3

    .line 667
    .local v3, e:Ljava/io/IOException;
    const/4 v8, 0x0

    goto :goto_1

    .line 646
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    const-class v10, Landroid/view/ViewDebug;

    const-string v11, "dispatchCommand"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    .line 647
    const-class v14, Landroid/view/View;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-class v14, Ljava/io/OutputStream;

    aput-object v14, v12, v13

    .line 646
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 648
    .local v2, dispatch:Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 649
    const/4 v10, 0x0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    const/4 v12, 0x2

    aput-object p3, v11, v12

    const/4 v12, 0x3

    .line 650
    new-instance v13, Lcom/citibikenyc/citibike/ViewServer$UncloseableOuputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/citibikenyc/citibike/ViewServer$UncloseableOuputStream;-><init>(Ljava/io/OutputStream;)V

    aput-object v13, v11, v12

    .line 649
    invoke-virtual {v2, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v10

    if-nez v10, :cond_4

    .line 653
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 654
    .end local v6           #out:Ljava/io/BufferedWriter;
    .local v7, out:Ljava/io/BufferedWriter;
    :try_start_3
    const-string v10, "DONE\n"

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v6, v7

    .line 663
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    :cond_4
    if-eqz v6, :cond_5

    .line 665
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v1           #code:Ljava/lang/String;
    .end local v2           #dispatch:Ljava/lang/reflect/Method;
    .end local v4           #hashCode:I
    .end local v5           #index:I
    .end local v9           #window:Landroid/view/View;
    :cond_5
    :goto_3
    move v10, v8

    .line 672
    goto :goto_2

    .line 658
    :catch_1
    move-exception v3

    .line 659
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v10, "ViewServer"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Could not send command "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 660
    const-string v12, " with parameters "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 659
    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 661
    const/4 v8, 0x0

    .line 663
    if-eqz v6, :cond_5

    .line 665
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 666
    :catch_2
    move-exception v3

    .line 667
    .local v3, e:Ljava/io/IOException;
    const/4 v8, 0x0

    goto :goto_3

    .line 662
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 663
    :goto_5
    if-eqz v6, :cond_6

    .line 665
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 670
    :cond_6
    :goto_6
    throw v10

    .line 666
    :catch_3
    move-exception v3

    .line 667
    .restart local v3       #e:Ljava/io/IOException;
    const/4 v8, 0x0

    goto :goto_6

    .line 666
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #code:Ljava/lang/String;
    .restart local v2       #dispatch:Ljava/lang/reflect/Method;
    .restart local v4       #hashCode:I
    .restart local v5       #index:I
    .restart local v9       #window:Landroid/view/View;
    :catch_4
    move-exception v3

    .line 667
    .restart local v3       #e:Ljava/io/IOException;
    const/4 v8, 0x0

    goto :goto_3

    .line 662
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 658
    .end local v6           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v6       #out:Ljava/io/BufferedWriter;
    goto :goto_4
.end method

.method private windowManagerAutolistLoop()Z
    .locals 7

    .prologue
    .line 800
    iget-object v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #calls: Lcom/citibikenyc/citibike/ViewServer;->addWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    invoke-static {v5, p0}, Lcom/citibikenyc/citibike/ViewServer;->access$6(Lcom/citibikenyc/citibike/ViewServer;Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V

    .line 801
    const/4 v3, 0x0

    .line 803
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 804
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 832
    if-eqz v4, :cond_1

    .line 834
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 839
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #calls: Lcom/citibikenyc/citibike/ViewServer;->removeWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    invoke-static {v5, p0}, Lcom/citibikenyc/citibike/ViewServer;->access$7(Lcom/citibikenyc/citibike/ViewServer;Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V

    move-object v3, v4

    .line 841
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 805
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_2
    const/4 v2, 0x0

    .line 806
    .local v2, needWindowListUpdate:Z
    const/4 v1, 0x0

    .line 807
    .local v1, needFocusedWindowUpdate:Z
    :try_start_3
    iget-object v6, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 808
    :goto_3
    :try_start_4
    iget-boolean v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v5, :cond_8

    .line 811
    :cond_3
    iget-boolean v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v5, :cond_4

    .line 812
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 813
    const/4 v2, 0x1

    .line 815
    :cond_4
    iget-boolean v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v5, :cond_5

    .line 816
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 817
    const/4 v1, 0x1

    .line 807
    :cond_5
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 820
    if-eqz v2, :cond_6

    .line 821
    :try_start_5
    const-string v5, "LIST UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 824
    :cond_6
    if-eqz v1, :cond_0

    .line 825
    const-string v5, "FOCUS UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 829
    .end local v1           #needFocusedWindowUpdate:Z
    .end local v2           #needWindowListUpdate:Z
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 830
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_4
    :try_start_6
    const-string v5, "ViewServer"

    const-string v6, "Connection error: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 832
    if-eqz v3, :cond_7

    .line 834
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 839
    :cond_7
    :goto_5
    iget-object v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #calls: Lcom/citibikenyc/citibike/ViewServer;->removeWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    invoke-static {v5, p0}, Lcom/citibikenyc/citibike/ViewServer;->access$7(Lcom/citibikenyc/citibike/ViewServer;Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V

    goto :goto_2

    .line 809
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v1       #needFocusedWindowUpdate:Z
    .restart local v2       #needWindowListUpdate:Z
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_8
    :try_start_8
    iget-object v5, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 807
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 831
    .end local v1           #needFocusedWindowUpdate:Z
    .end local v2           #needWindowListUpdate:Z
    :catchall_1
    move-exception v5

    move-object v3, v4

    .line 832
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_6
    if-eqz v3, :cond_9

    .line 834
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 839
    :cond_9
    :goto_7
    iget-object v6, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->this$0:Lcom/citibikenyc/citibike/ViewServer;

    #calls: Lcom/citibikenyc/citibike/ViewServer;->removeWindowListener(Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V
    invoke-static {v6, p0}, Lcom/citibikenyc/citibike/ViewServer;->access$7(Lcom/citibikenyc/citibike/ViewServer;Lcom/citibikenyc/citibike/ViewServer$WindowListener;)V

    .line 840
    throw v5

    .line 835
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_7

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v5

    goto :goto_1

    .line 831
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v5

    goto :goto_6

    .line 829
    :catch_4
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public focusChanged()V
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 794
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 795
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 793
    monitor-exit v1

    .line 797
    return-void

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 563
    const/4 v2, 0x0

    .line 565
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, request:Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 573
    .local v4, index:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 574
    move-object v0, v6

    .line 575
    .local v0, command:Ljava/lang/String;
    const-string v5, ""

    .line 582
    .local v5, parameters:Ljava/lang/String;
    :goto_0
    const-string v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 583
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    #calls: Lcom/citibikenyc/citibike/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/citibikenyc/citibike/ViewServer;->access$1(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .line 596
    .local v7, result:Z
    :goto_1
    if-nez v7, :cond_0

    .line 597
    const-string v8, "ViewServer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "An error occurred with the command: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 602
    :cond_0
    if-eqz v3, :cond_1

    .line 604
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 610
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_c

    .line 612
    :try_start_3
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v2, v3

    .line 618
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    .restart local v2       #in:Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    return-void

    .line 577
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #index:I
    .restart local v6       #request:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 578
    .restart local v0       #command:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #parameters:Ljava/lang/String;
    goto :goto_0

    .line 584
    :cond_4
    const-string v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 585
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    #calls: Lcom/citibikenyc/citibike/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/citibikenyc/citibike/ViewServer;->access$1(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 586
    .end local v7           #result:Z
    :cond_5
    const-string v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 587
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->listWindows(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 588
    .end local v7           #result:Z
    :cond_6
    const-string v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 589
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->getFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 590
    .end local v7           #result:Z
    :cond_7
    const-string v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 591
    invoke-direct {p0}, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 593
    .end local v7           #result:Z
    :cond_8
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8, v0, v5}, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v7

    .restart local v7       #result:Z
    goto :goto_1

    .line 599
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 600
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v8, "ViewServer"

    const-string v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 602
    if-eqz v2, :cond_9

    .line 604
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 610
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_2

    .line 612
    :try_start_7
    iget-object v8, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 613
    :catch_1
    move-exception v1

    .line 614
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 606
    :catch_2
    move-exception v1

    .line 607
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 601
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 602
    :goto_6
    if-eqz v2, :cond_a

    .line 604
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 610
    :cond_a
    :goto_7
    iget-object v9, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_b

    .line 612
    :try_start_9
    iget-object v9, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 617
    :cond_b
    :goto_8
    throw v8

    .line 606
    :catch_3
    move-exception v1

    .line 607
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 613
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 614
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 606
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v0       #command:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #index:I
    .restart local v5       #parameters:Ljava/lang/String;
    .restart local v6       #request:Ljava/lang/String;
    .restart local v7       #result:Z
    :catch_5
    move-exception v1

    .line 607
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 613
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 614
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_c
    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 601
    .end local v0           #command:Ljava/lang/String;
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_6

    .line 599
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public windowsChanged()V
    .locals 2

    .prologue
    .line 786
    iget-object v1, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 787
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 788
    iget-object v0, p0, Lcom/citibikenyc/citibike/ViewServer$ViewServerWorker;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 786
    monitor-exit v1

    .line 790
    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
