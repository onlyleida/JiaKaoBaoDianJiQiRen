.class final Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder;->B(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "phone",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/d;

.field final synthetic $examSite:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->$activity:Landroidx/appcompat/app/d;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->$examSite:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->invoke$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->invoke$lambda-1(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method

.method private static final invoke$lambda-1(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 3

    const-string v0, "$phone"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$examSite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$loadingDialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/o;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/o;-><init>()V

    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v0, p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/o;->m(Ljava/lang/String;J)Z

    const-string p0, "\u5206\u4eab\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/siterule/v;

    invoke-direct {p0, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/v;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    instance-of p1, p0, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u5206\u4eab\u5931\u8d25"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/siterule/v;

    invoke-direct {p0, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/v;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    :goto_1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/siterule/v;

    invoke-direct {p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/v;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw p0
.end method

.method private static final invoke$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->$activity:Landroidx/appcompat/app/d;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/RuleSiteItemBinder$onBindViewHolder$2$1;->$examSite:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/siterule/w;

    invoke-direct {v2, p1, v1, v0}, Lcn/mucang/jiakaoyi/uilib/siterule/w;-><init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
