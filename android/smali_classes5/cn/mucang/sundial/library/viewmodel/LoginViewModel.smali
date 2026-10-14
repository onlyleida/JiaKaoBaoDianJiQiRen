.class public final Lcn/mucang/sundial/library/viewmodel/LoginViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R(\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR(\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u0012\u0010\n\"\u0004\u0008\u0013\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/sundial/library/viewmodel/LoginViewModel;",
        "Landroidx/lifecycle/a;",
        "Lkotlin/v;",
        "getLastInfo",
        "()V",
        "Landroidx/lifecycle/i0;",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "studentLiveData",
        "Landroidx/lifecycle/i0;",
        "getStudentLiveData",
        "()Landroidx/lifecycle/i0;",
        "setStudentLiveData",
        "(Landroidx/lifecycle/i0;)V",
        "",
        "personMode",
        "I",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "coachLiveData",
        "getCoachLiveData",
        "setCoachLiveData",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;I)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private coachLiveData:Landroidx/lifecycle/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final personMode:I

.field private studentLiveData:Landroidx/lifecycle/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;I)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    iput p2, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->personMode:I

    .line 3
    new-instance p1, Landroidx/lifecycle/i0;

    invoke-direct {p1}, Landroidx/lifecycle/i0;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->coachLiveData:Landroidx/lifecycle/i0;

    .line 4
    new-instance p1, Landroidx/lifecycle/i0;

    invoke-direct {p1}, Landroidx/lifecycle/i0;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->studentLiveData:Landroidx/lifecycle/i0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Application;IILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;-><init>(Landroid/app/Application;I)V

    return-void
.end method

.method public static final synthetic access$getPersonMode$p(Lcn/mucang/sundial/library/viewmodel/LoginViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->personMode:I

    return p0
.end method


# virtual methods
.method public final getCoachLiveData()Landroidx/lifecycle/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->coachLiveData:Landroidx/lifecycle/i0;

    return-object v0
.end method

.method public final getLastInfo()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel$getLastInfo$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel$getLastInfo$1;-><init>(Lcn/mucang/sundial/library/viewmodel/LoginViewModel;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getStudentLiveData()Landroidx/lifecycle/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->studentLiveData:Landroidx/lifecycle/i0;

    return-object v0
.end method

.method public final setCoachLiveData(Landroidx/lifecycle/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->coachLiveData:Landroidx/lifecycle/i0;

    return-void
.end method

.method public final setStudentLiveData(Landroidx/lifecycle/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i0<",
            "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->studentLiveData:Landroidx/lifecycle/i0;

    return-void
.end method
