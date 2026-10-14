.class public Lcom/coloros/ocs/base/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coloros/ocs/base/common/a;-><init>(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method protected constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/coloros/ocs/base/common/a;->a:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lg/b/a/a/c/c;->a(Ljava/lang/Object;)Lg/b/a/a/c/c$a;

    move-result-object v0

    iget v1, p0, Lcom/coloros/ocs/base/common/a;->a:I

    invoke-static {v1}, Lcom/coloros/ocs/base/common/e/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lg/b/a/a/c/c$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lg/b/a/a/c/c$a;

    invoke-virtual {v0}, Lg/b/a/a/c/c$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
