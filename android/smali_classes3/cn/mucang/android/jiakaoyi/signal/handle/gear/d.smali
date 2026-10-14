.class public final Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u0000 -2\u00020\u0001:\u0001-B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0017J\u0006\u0010&\u001a\u00020#J\u0006\u0010\'\u001a\u00020#J\u0006\u0010(\u001a\u00020\u0015J\u0006\u0010)\u001a\u00020#J\u0006\u0010*\u001a\u00020#J\u0010\u0010+\u001a\u00020#2\u0008\u0010,\u001a\u0004\u0018\u00010\u0005R1\u0010\u0003\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R1\u0010\u0011\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00120\u0004j\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0012`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\tR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0019\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearPracticeViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "RPM_MAP",
        "Ljava/util/HashMap;",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "",
        "Lkotlin/collections/HashMap;",
        "getRPM_MAP",
        "()Ljava/util/HashMap;",
        "currentGear",
        "getCurrentGear",
        "()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "setCurrentGear",
        "(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V",
        "gearLearning",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLearning;",
        "gearMap",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;",
        "getGearMap",
        "isStart",
        "",
        "max",
        "",
        "min",
        "practiceResult",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Triple;",
        "getPracticeResult",
        "()Landroidx/lifecycle/MutableLiveData;",
        "practiceStatus",
        "getPracticeStatus",
        "reachTime",
        "",
        "addData",
        "",
        "currentRpm",
        "speed",
        "clearData",
        "end",
        "isStudying",
        "reset",
        "save",
        "start",
        "gear",
        "Companion",
        "signal_release"
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
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private d:Z

.field private final e:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

.field private final f:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lkotlin/Triple<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->a:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v2, 0x9c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v2, 0x898

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->b:Ljava/util/HashMap;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    .line 10
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->f:Landroidx/lifecycle/z;

    .line 11
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->g:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->d:Z

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-virtual {v1, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->d(IFLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->f:Landroidx/lifecycle/z;

    new-instance v1, Lkotlin/Triple;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v1, v2, v3, p2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->f()Z

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_2

    .line 5
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string p2, "\u5f53\u524d\u6321\u4f4d\u5b66\u4e60\u5b8c\u6210"

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->b()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->h()Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->value:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->f()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->g:Landroidx/lifecycle/z;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->d:Z

    return-void
.end method

.method public final c()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lkotlin/Triple<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->f:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final d()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->g:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->e:Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/b;->g()V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->n()V

    return-void
.end method

.method public final h(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->d:Z

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->g:Landroidx/lifecycle/z;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
