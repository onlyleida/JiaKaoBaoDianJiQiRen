.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/g/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1",
        "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;",
        "priority",
        "",
        "getPriority",
        "()I",
        "show",
        "",
        "finishCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
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
.field private final a:I

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->c:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->a:I

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->d(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->a:I

    return v0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/g/f$a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_complete_recommend:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_complete_recommend)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->c:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->user_level_countdown:I

    .line 4
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->user_level_cancel:I

    .line 5
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$countDown$1;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;->c:Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    invoke-direct {v6, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$countDown$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V

    .line 6
    new-instance v15, Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 9
    sget-object v11, Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1$show$1;

    new-instance v12, Lcn/mucang/android/jiakaoyi/teachingk2/level/a;

    move-object/from16 v1, p1

    invoke-direct {v12, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback$onLevelChanged$1;)V

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x28

    const/4 v14, 0x0

    move-object v3, v15

    .line 10
    invoke-direct/range {v3 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;-><init>(Ljava/lang/String;ILkotlin/jvm/b/l;ZLjava/lang/Integer;Lkotlin/jvm/b/l;Ljava/lang/Integer;Lkotlin/jvm/b/l;Landroid/widget/PopupWindow$OnDismissListener;ILkotlin/jvm/internal/o;)V

    .line 11
    invoke-virtual {v15}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->l()V

    return-void
.end method
