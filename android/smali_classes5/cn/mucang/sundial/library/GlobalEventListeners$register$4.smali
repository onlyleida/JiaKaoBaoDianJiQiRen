.class final Lcn/mucang/sundial/library/GlobalEventListeners$register$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/GlobalEventListeners;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/GlobalEventListeners$register$4;

    invoke-direct {v0}, Lcn/mucang/sundial/library/GlobalEventListeners$register$4;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/GlobalEventListeners$register$4;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;)V
    .locals 8

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->studentLoginSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v0, "MucangConfig.getContext()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 6
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TERMINAL_TAKE:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v3

    .line 7
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v4

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    const-string v5, "DataManager.getInstance()"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v6

    .line 9
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v7

    move-object v0, p1

    move-object v5, v6

    move-object v6, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;-><init>(Landroid/content/Context;IIILcn/mucang/sundial/android/db/entity/CoachInfo;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->takePicture()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/GlobalEventListeners$register$4;->onChanged(Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;)V

    return-void
.end method
