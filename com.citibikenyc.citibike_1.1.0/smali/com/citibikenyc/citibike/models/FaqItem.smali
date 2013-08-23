.class public Lcom/citibikenyc/citibike/models/FaqItem;
.super Ljava/lang/Object;
.source "FaqItem.java"


# instance fields
.field public answer:Ljava/lang/String;

.field public question:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "question"
    .parameter "answer"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/citibikenyc/citibike/models/FaqItem;->question:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/FaqItem;->answer:Ljava/lang/String;

    .line 10
    return-void
.end method
