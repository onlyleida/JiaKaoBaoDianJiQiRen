.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;
.super Lcn/mucang/jiakaoyi/uilib/login/face/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J \u0010\u000f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$checkListener$1",
        "Lcn/mucang/jiakaoyi/uilib/login/face/AbsFaceCheckListener;",
        "faceApi",
        "Lcn/mucang/jiakaoyi/uilib/login/api/FaceCheckApi;",
        "onBrightness",
        "",
        "brightness",
        "",
        "onCheckFace",
        "pos",
        "Lorg/opencv/core/Rect;",
        "landmark",
        "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;",
        "width",
        "height",
        "onCheckFarFace",
        "onCheckNoFace",
        "onCheckSuitableFace",
        "onSuccess",
        "face",
        "Landroid/graphics/Bitmap;",
        "result",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;",
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


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/login/o/b;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/h;-><init>()V

    .line 2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/login/o/b;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/login/o/b;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->a:Lcn/mucang/jiakaoyi/uilib/login/o/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/opencv/core/Rect;II)V
    .locals 0

    const-string p2, "pos"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/opencv/core/Rect;Lcn/mucang/jiakaoyi/uilib/login/face/q;II)V
    .locals 0

    const-string p3, "pos"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "landmark"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public g(Lorg/opencv/core/Rect;)V
    .locals 1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 8

    const-string v0, "face"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_10

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result v1

    const/16 v4, 0x1e

    if-ne v1, v4, :cond_2

    goto/16 :goto_c

    .line 3
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_4

    .line 4
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/login/o/b;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/login/o/b;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/o/b;->o(Ljava/lang/String;)Z

    move-result p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d26\u53f7\u5f02\u5e38\uff0c\u5220\u9664\uff08"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\uff09\u7684\u4eba\u8138\u6570\u636e\u7ed3\u679c\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->h(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V

    return-void

    .line 7
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->i(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;I)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 9
    sget-object v4, Lcn/mucang/android/facelib/v;->a:Lcn/mucang/android/facelib/v;

    invoke-virtual {v4, p1, v3}, Lcn/mucang/android/facelib/v;->k(Landroid/graphics/Bitmap;Z)Ljava/util/List;

    move-result-object p1

    const/4 v4, 0x0

    if-nez p1, :cond_5

    :goto_2
    move-object p1, v4

    goto :goto_3

    .line 10
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/facelib/y/e$a;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/facelib/y/e$a;->a()Ljava/lang/Object;

    move-result-object p1

    .line 11
    :goto_3
    instance-of v5, p1, [[F

    if-eqz v5, :cond_7

    check-cast p1, [[F

    goto :goto_4

    :cond_7
    move-object p1, v4

    :goto_4
    if-nez p1, :cond_8

    move-object p1, v4

    goto :goto_5

    .line 12
    :cond_8
    aget-object p1, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_5
    if-nez p1, :cond_9

    goto/16 :goto_a

    .line 13
    :cond_9
    :try_start_1
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->a:Lcn/mucang/jiakaoyi/uilib/login/o/b;

    .line 14
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getXyToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v7

    .line 16
    invoke-virtual {v5, v6, v7, p1}, Lcn/mucang/jiakaoyi/uilib/login/o/b;->p(Ljava/lang/String;F[F)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    :try_start_2
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "angle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", checkCount\uff1a"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \uff0cnoMatchCount\uff1a"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u65e0\u611f\u767b\u5f55\u5f02\u5e38\u68c0\u6d4b\u63a5\u53e3\u5931\u8d25\uff1a"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 20
    instance-of p2, v5, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz p2, :cond_c

    .line 21
    check-cast v5, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v5}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result p2

    const/16 v5, 0x2712

    if-eq p2, v5, :cond_b

    const/16 v5, 0x2713

    if-eq p2, v5, :cond_a

    goto :goto_7

    .line 22
    :cond_a
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->j(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;I)V

    goto :goto_7

    .line 23
    :cond_b
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->h(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V

    .line 24
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v3, " \u8fd8\u672a\u6ce8\u518c\u4eba\u8138"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 25
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->b()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 26
    sget-object p2, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p2, v0}, Lcn/mucang/android/facelib/FaceLoginManager;->K(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    .line 27
    :cond_c
    :goto_7
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_8

    :cond_d
    move-object v4, p1

    :goto_8
    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_e

    goto :goto_9

    .line 28
    :cond_e
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_9
    if-eqz v2, :cond_f

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCount\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  \uff0cnoMatchCount\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u662f\u672c\u4eba\u8d26\u53f7\uff0c\u65e0\u5f02\u5e38"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 30
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->h(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V

    .line 31
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/LoginHelper;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 32
    sget-object p1, Lcn/mucang/android/facelib/FaceLoginManager;->a:Lcn/mucang/android/facelib/FaceLoginManager;

    invoke-virtual {p1, v0}, Lcn/mucang/android/facelib/FaceLoginManager;->K(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    .line 33
    :cond_f
    :goto_a
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 34
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    return-void

    .line 35
    :cond_10
    :goto_c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;->h(Lcn/mucang/android/jiakaoyi/teachingk2/login/AbnormalLoginChecker;)V

    return-void
.end method
