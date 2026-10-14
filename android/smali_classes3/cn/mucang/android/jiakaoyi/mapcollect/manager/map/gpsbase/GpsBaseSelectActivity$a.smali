.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "launch",
        "",
        "activity",
        "Landroid/app/Activity;",
        "cityCode",
        "callback",
        "Lkotlin/Function2;",
        "",
        "mapcollect_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/b/p;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity$a;->c(Lkotlin/jvm/b/p;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final c(Lkotlin/jvm/b/p;IILandroid/content/Intent;)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-wide/16 p1, -0x1

    const-string v0, "gpsBaseId"

    .line 1
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-string v0, "gpsBaseName"

    .line 2
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseSelectActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cityCode"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/c;

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/c;-><init>(Lkotlin/jvm/b/p;)V

    const/16 p3, 0x3e7

    invoke-virtual {p1, v0, p3, p2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method
