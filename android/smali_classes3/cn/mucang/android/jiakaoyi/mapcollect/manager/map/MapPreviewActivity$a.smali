.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$Companion;",
        "",
        "()V",
        "KEY_EXAM_PREVIEW",
        "",
        "KEY_EXAM_SITE_ID",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
        "siteModel",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "preview",
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

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$a;Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siteModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapPreviewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-wide v1, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    const-string p2, "key.examSiteId"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "key.preview"

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
