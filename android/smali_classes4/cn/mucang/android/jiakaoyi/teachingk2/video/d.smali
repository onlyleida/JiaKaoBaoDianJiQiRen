.class public final Lcn/mucang/android/jiakaoyi/teachingk2/video/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoGuideManager;",
        "",
        "()V",
        "guideList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;",
        "getGuideList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "videoList",
        "Ljava/util/ArrayList;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;",
        "Lkotlin/collections/ArrayList;",
        "videoUrl",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getVideoUrl",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setVideoUrl",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "getData",
        "",
        "user",
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "videoSubType",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

.field private static volatile b:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 3

    const-string v0, "user"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->b:Landroidx/lifecycle/z;

    .line 2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/d/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/d/b;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/d/b;->m()Ljava/util/List;

    move-result-object v0

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/k;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/k;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcn/mucang/jiakaoyi/uilib/i/k;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result p0

    const-string v2, "yinhe_privacy_teach_video"

    invoke-virtual {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/i/k;->o(ILjava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;

    move-result-object p0

    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/model/PrivacyAgreementModel;->confirm:Z

    if-eqz p0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;

    .line 10
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;->videoSubType:I

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_1

    .line 11
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->c()Landroidx/lifecycle/z;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 14
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u62c9\u53d6\u4f7f\u7528\u89c6\u9891\u6570\u636e\u5931\u8d25:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    :cond_4
    :try_start_1
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 17
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->b()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/f;->r(Z)V

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/n;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/n;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/n;->n()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->b()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/model/f;->u(Ljava/util/List;)V

    .line 21
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 22
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 24
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u62c9\u53d6\u5b66\u5458\u5f15\u5bfc\u914d\u7f6e\u5931\u8d25:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final b()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final c()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->b:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final d(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;->videoSubType:I

    if-ne p1, v2, :cond_0

    .line 3
    iget-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VideoDataModel$VideoItem;->url:Ljava/lang/String;

    const-string v0, "item.url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final e(Landroidx/lifecycle/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/z<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->b:Landroidx/lifecycle/z;

    return-void
.end method
