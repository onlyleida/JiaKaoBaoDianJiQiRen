.class public final Lcom/loc/eq;
.super Lcom/loc/eo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loc/eo<",
        "Lcom/loc/er;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/loc/eo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private static a(Lcom/loc/er;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/er;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/loc/er;J)V
    .locals 0

    if-eqz p0, :cond_0

    iput-wide p1, p0, Lcom/loc/er;->t:J

    :cond_0
    return-void
.end method

.method private static b(Lcom/loc/er;)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x63

    return p0

    :cond_0
    iget p0, p0, Lcom/loc/er;->s:I

    return p0
.end method

.method private static c(Lcom/loc/er;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/loc/er;->t:J

    return-wide v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;J)V
    .locals 0

    check-cast p1, Lcom/loc/er;

    invoke-static {p1, p2, p3}, Lcom/loc/eq;->a(Lcom/loc/er;J)V

    return-void
.end method

.method final b()J
    .locals 2

    sget v0, Lcom/loc/el;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/loc/er;

    invoke-static {p1}, Lcom/loc/eq;->a(Lcom/loc/er;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/loc/er;

    invoke-static {p1}, Lcom/loc/eq;->b(Lcom/loc/er;)I

    move-result p1

    return p1
.end method

.method final c()J
    .locals 2

    sget v0, Lcom/loc/el;->h:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final synthetic d(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Lcom/loc/er;

    invoke-static {p1}, Lcom/loc/eq;->c(Lcom/loc/er;)J

    move-result-wide v0

    return-wide v0
.end method
