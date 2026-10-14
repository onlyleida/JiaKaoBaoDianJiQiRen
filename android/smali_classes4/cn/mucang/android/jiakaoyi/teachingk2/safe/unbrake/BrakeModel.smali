.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 /2\u00020\u0001:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010(\u001a\u00020\u0019J\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\"J\u0010\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0000J\u0006\u0010.\u001a\u00020,R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR\"\u0010!\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00060"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "Ljava/io/Serializable;",
        "()V",
        "extraDesc",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;",
        "getExtraDesc",
        "()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;",
        "setExtraDesc",
        "(Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V",
        "extraTitle",
        "",
        "getExtraTitle",
        "()Ljava/lang/String;",
        "setExtraTitle",
        "(Ljava/lang/String;)V",
        "extraZhTitle",
        "getExtraZhTitle",
        "setExtraZhTitle",
        "reason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "getReason",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "setReason",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V",
        "showConfirmDialog",
        "",
        "getShowConfirmDialog",
        "()Z",
        "setShowConfirmDialog",
        "(Z)V",
        "teachBrakeShowDialog",
        "getTeachBrakeShowDialog",
        "setTeachBrakeShowDialog",
        "unBrakeList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;",
        "getUnBrakeList",
        "()Ljava/util/List;",
        "setUnBrakeList",
        "(Ljava/util/List;)V",
        "canShowDialog",
        "createUnBrakeChecker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;",
        "mergeBrake",
        "",
        "brakeModel",
        "setTeachBrake",
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
.field public static final Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

.field private static final brakeNone:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;


# instance fields
.field private extraDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field private extraTitle:Ljava/lang/String;

.field private extraZhTitle:Ljava/lang/String;

.field private reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

.field private showConfirmDialog:Z

.field private teachBrakeShowDialog:Z

.field private unBrakeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->brakeNone:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-void
.end method

.method public static final synthetic access$getBrakeNone$cp()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->brakeNone:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    return-object v0
.end method

.method public static final createBrakeModel(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;",
            ">;Z)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;"
        }
    .end annotation

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    invoke-virtual {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p0

    return-object p0
.end method

.method public static final getBrakeNone()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final canShowDialog()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->teachBrakeShowDialog:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final createUnBrakeChecker()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    .line 5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getCondition()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    move-result-object v4

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$b;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    const-string v6, "getter"

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getExtra()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;-><init>(I)V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_4
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/c;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/c;-><init>()V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_5
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/b;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/b;-><init>()V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_6
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/a;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/a;-><init>()V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    :goto_2
    return-object v0
.end method

.method public final getExtraDesc()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object v0
.end method

.method public final getExtraTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraZhTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraZhTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    return-object v0
.end method

.method public final getShowConfirmDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->showConfirmDialog:Z

    return v0
.end method

.method public final getTeachBrakeShowDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->teachBrakeShowDialog:Z

    return v0
.end method

.method public final getUnBrakeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    return-object v0
.end method

.method public final mergeBrake(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5239\u8f66\u7406\u7531\u5408\u5e76\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    if-eqz p1, :cond_a

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getLevel()I

    move-result v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraTitle:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraTitle:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraZhTitle:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraZhTitle:Ljava/lang/String;

    .line 8
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->showConfirmDialog:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->showConfirmDialog:Z

    .line 9
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    if-nez p1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    const/4 v3, 0x0

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    .line 15
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getCondition()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    move-result-object v6

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getCondition()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    move-result-object v7

    if-ne v6, v7, :cond_6

    .line 16
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getCondition()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    if-ne v3, v4, :cond_7

    .line 17
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getExtra()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 18
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getExtra()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_7

    .line 19
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->getExtra()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->setExtra(Ljava/lang/Object;)V

    :cond_7
    const/4 v3, 0x1

    :cond_8
    if-nez v3, :cond_5

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_9
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    :cond_a
    :goto_4
    return-void
.end method

.method public final setExtraDesc(Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraDesc:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-void
.end method

.method public final setExtraTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraTitle:Ljava/lang/String;

    return-void
.end method

.method public final setExtraZhTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->extraZhTitle:Ljava/lang/String;

    return-void
.end method

.method public final setReason(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->reason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    return-void
.end method

.method public final setShowConfirmDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->showConfirmDialog:Z

    return-void
.end method

.method public final setTeachBrake()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->teachBrakeShowDialog:Z

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    const/4 v2, 0x0

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;-><init>()V

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->EngineStart:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->setCondition(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V

    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    aput-object v3, v1, v2

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;-><init>()V

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->GearN:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->setCondition(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;-><init>()V

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->Handbrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->setCondition(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V

    aput-object v2, v1, v0

    .line 6
    invoke-static {v1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final setTeachBrakeShowDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->teachBrakeShowDialog:Z

    return-void
.end method

.method public final setUnBrakeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->unBrakeList:Ljava/util/List;

    return-void
.end method
