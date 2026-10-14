.class public final Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener;->makeSelfLauncher(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "cn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$1",
        "Lcn/mucang/sundial/library/device/DeviceHelper$OnInitListener;",
        "Lkotlin/v;",
        "onInit",
        "()V",
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
.field final synthetic $deviceHelper:Lcn/mucang/sundial/library/device/DeviceHelper;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/device/DeviceHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$1;->$deviceHelper:Lcn/mucang/sundial/library/device/DeviceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activelistener/SpecialFuncActiveListener$makeSelfLauncher$1;->$deviceHelper:Lcn/mucang/sundial/library/device/DeviceHelper;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/DeviceHelper;->makeSelfLauncher()V

    return-void
.end method
