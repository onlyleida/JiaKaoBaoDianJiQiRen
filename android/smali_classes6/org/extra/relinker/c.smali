.class public Lorg/extra/relinker/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/extra/relinker/c$a;,
        Lorg/extra/relinker/c$b;,
        Lorg/extra/relinker/c$d;,
        Lorg/extra/relinker/c$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lorg/extra/relinker/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/extra/relinker/c$c;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/extra/relinker/c$c;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/extra/relinker/d;

    invoke-direct {v0}, Lorg/extra/relinker/d;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/extra/relinker/d;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/extra/relinker/c$c;)V

    return-void
.end method
