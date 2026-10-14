.class final Lcn/mucang/sundial/library/GlobalEventListeners$register$3;
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
        "Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;)V",
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
.field public static final INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/GlobalEventListeners$register$3;

    invoke-direct {v0}, Lcn/mucang/sundial/library/GlobalEventListeners$register$3;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/GlobalEventListeners$register$3;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;)V
    .locals 8

    .line 2
    new-instance v7, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v0, "MucangConfig.getContext()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v2, p1, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->personMode:I

    .line 5
    iget v3, p1, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->uploadMode:I

    .line 6
    iget v4, p1, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->eventType:I

    .line 7
    iget-object v5, p1, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->coach:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    .line 8
    iget-object v6, p1, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-object v0, v7

    .line 9
    invoke-direct/range {v0 .. v6}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;-><init>(Landroid/content/Context;IIILcn/mucang/sundial/android/db/entity/CoachInfo;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    .line 10
    invoke-virtual {v7}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->takePicture()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/GlobalEventListeners$register$3;->onChanged(Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;)V

    return-void
.end method
