.class public final Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0016\u0010\r\u001a\u00020\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/trace/correct/SimpleCorrectCallback;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/listener/CorrectCallback;",
        "drawLineHelper",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;)V",
        "repeatDraw",
        "Lcn/mucang/android/jiakaoyi/teachingk2/trace/correct/RepeatDraw;",
        "clearCorrectView",
        "",
        "drawFrames",
        "teaches",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/model/CorrectTeachPoint;",
        "drawPath",
        "path",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "drawTeachLine",
        "enable",
        "",
        "onFinish",
        "onPathRefresh",
        "model",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/model/TargetCorrectModel;",
        "onTip",
        "teachPoint",
        "Companion",
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
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b$a;

.field private static d:I = 0x4f5da2


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b$a;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V
    .locals 1

    const-string v0, "drawLineHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    return-void
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->a(I)V

    return-void
.end method

.method private final d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;-><init>()V

    .line 3
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->id:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->id:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->id:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->open:Z

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->type:I

    const/16 v2, 0xa

    .line 6
    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->group:I

    .line 7
    invoke-static {p1}, Lkotlin/collections/s;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->g:Ljava/util/List;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->positions:Ljava/util/List;

    const-string p1, "#FF0100"

    .line 8
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->color:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->alpha:F

    const/16 p1, 0xf

    .line 10
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->width:I

    .line 11
    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->height:I

    .line 12
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->isSeal:Z

    const-string p1, "alphaColorMat"

    .line 13
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->material:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;)V

    return-void
.end method

.method private final e(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 3
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->d:I

    add-int/lit8 v0, v2, 0x1

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->d:I

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xf

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe00

    const/4 v15, 0x0

    const-string v6, "#22EA40"

    move-object/from16 v5, p1

    .line 4
    invoke-static/range {v1 .. v15}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    return-void
.end method

.method private final f(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 3
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->d:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->d:I

    const/4 v4, 0x2

    new-array v4, v4, [Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x0

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aput-object v6, v4, v5

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x5

    const/16 v10, 0xa

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe00

    const/16 v16, 0x0

    const-string v7, "#2244C0"

    .line 5
    invoke-static/range {v2 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V
    .locals 1

    const-string v0, "teachPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->b:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->f()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->M()V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V
    .locals 2

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->c()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "model.path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->e(Ljava/util/List;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "model.teaches"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->d(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->f(Ljava/util/List;)V

    return-void
.end method

.method public enable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getGuide()Z

    move-result v0

    return v0
.end method

.method public onFinish()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/b;->c()V

    return-void
.end method
