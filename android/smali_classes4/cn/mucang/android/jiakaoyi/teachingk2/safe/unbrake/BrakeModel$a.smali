.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$Companion;",
        "",
        "()V",
        "brakeNone",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "getBrakeNone$annotations",
        "getBrakeNone",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "createBrakeModel",
        "reason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "list",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;",
        "needCreateUnBrake",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 5
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

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setReason(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V

    .line 3
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setUnBrakeList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x3

    new-array p2, p2, [Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    .line 5
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->EngineStart:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->setCondition(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    aput-object p3, p2, v3

    .line 6
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->GearN:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->setCondition(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V

    aput-object p3, p2, v2

    const/4 p3, 0x2

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;-><init>()V

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;->Handbrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;->setCondition(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeEnum;)V

    aput-object v1, p2, p3

    .line 8
    invoke-static {p2}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setUnBrakeList(Ljava/util/List;)V

    .line 9
    :cond_1
    :goto_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Handbrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->setShowConfirmDialog(Z)V

    return-object v0
.end method

.method public final c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->access$getBrakeNone$cp()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    return-object v0
.end method
