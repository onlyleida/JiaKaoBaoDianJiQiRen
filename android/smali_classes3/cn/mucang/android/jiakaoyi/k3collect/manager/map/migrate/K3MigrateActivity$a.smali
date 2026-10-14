.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$Companion;",
        "",
        "()V",
        "GPS_BASE_ID",
        "",
        "GPS_BASE_NAME",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
        "siteModel",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "gpsBaseId",
        "",
        "gpsBaseName",
        "MapCollectK3_release"
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

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;JLjava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siteModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gpsBaseName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapData:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p1, "\u6ca1\u6709\u5730\u56fe\u6570\u636e"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-wide v1, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    long-to-int v3, p3

    invoke-static {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-static {p2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/a;->c(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/content/Intent;)V

    const/high16 p2, 0x10000000

    .line 6
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "gpsBaseId"

    .line 7
    invoke-virtual {v1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
