.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0006\u0010\u0016\u001a\u00020\u0014J$\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0019H\u0002J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0014J\u0012\u0010\u001f\u001a\u00020\u00142\u0008\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002J\u0006\u0010!\u001a\u00020\u0014R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachOutputHelper;",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
        "isAutoTeach",
        "",
        "needCountDown",
        "(ZZ)V",
        "callbackInterceptor",
        "Lkotlin/Function0;",
        "getCallbackInterceptor",
        "()Lkotlin/jvm/functions/Function0;",
        "setCallbackInterceptor",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getNeedCountDown",
        "()Z",
        "teachModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;",
        "tipDialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;",
        "callback",
        "",
        "data",
        "dismissDialog",
        "doSendTeachMediaTip",
        "url",
        "",
        "type",
        "",
        "tip",
        "isShowingTeach",
        "reset",
        "showDialog",
        "mediaModel",
        "showLastTeach",
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
.field private final a:Z

.field private final b:Z

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;

.field private e:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->a:Z

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;-><init>(ZZ)V

    return-void
.end method

.method private final c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;-><init>()V

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->g(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iput p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->type:I

    .line 7
    iput-object p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->tip:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->fileName:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->j(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "getCurrentActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/i;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    :cond_2
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->b:Z

    check-cast v0, Landroidx/appcompat/app/d;

    invoke-virtual {v1, p1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;ZLandroidx/appcompat/app/d;)V

    .line 7
    :goto_1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;

    :cond_4
    :goto_2
    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->e:Lkotlin/jvm/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const-string p1, "\u5f53\u524d\u89e6\u53d1\u5e93\u4f4d\u5c55\u793a\u6559\u5b66\u8f93\u51fa\u88ab\u62e6\u622a"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->a:Z

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->c()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    .line 6
    :goto_1
    instance-of v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getPicture()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/PictureModel;->imageUrl:Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;->tm:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getShowText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 8
    :cond_4
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VideoModel;->videoUrl:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 10
    :cond_5
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v1, :cond_6

    .line 11
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/o0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;)V

    goto/16 :goto_3

    .line 12
    :cond_6
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLine()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;-><init>()V

    .line 14
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->isOn:Z

    .line 15
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lineType:I

    const/4 v3, 0x2

    const-string v4, "#ff0000"

    if-ne v1, v3, :cond_7

    .line 16
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->color:Ljava/lang/String;

    .line 17
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->TYPE_DRAW_LINE:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->type:I

    goto :goto_2

    :cond_7
    if-ne v1, v2, :cond_9

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 19
    :cond_8
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lines:Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_c

    const-string v1, "#00ff00"

    .line 20
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->color:Ljava/lang/String;

    .line 21
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->TYPE_RECT:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->type:I

    goto :goto_2

    :cond_9
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 22
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->color:Ljava/lang/String;

    .line 23
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->TYPE_POINT:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->type:I

    goto :goto_2

    :cond_a
    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 24
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->color:Ljava/lang/String;

    .line 25
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->TYPE_ANGLE:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->type:I

    goto :goto_2

    :cond_b
    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 26
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->color:Ljava/lang/String;

    .line 27
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->TYPE_AREA:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->type:I

    .line 28
    :cond_c
    :goto_2
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lines:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->positions:Ljava/util/List;

    .line 29
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->duration:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->duration:I

    .line 30
    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->offTime:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->offTime:I

    .line 31
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->onTime:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;->onTime:I

    .line 32
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;

    .line 33
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;)V

    return-void
.end method

.method public final d()Lkotlin/jvm/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->e:Lkotlin/jvm/b/a;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachTipsDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;

    return-void
.end method

.method public final h(Lkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->e:Lkotlin/jvm/b/a;

    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_pic_teaching:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;)V

    return-void
.end method
