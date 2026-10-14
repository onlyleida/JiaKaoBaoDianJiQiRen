.class final Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/DebugActivity2;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "",
        "isChecked",
        "Lkotlin/v;",
        "onCheckedChanged",
        "(Landroid/widget/CompoundButton;Z)V",
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
.field public static final INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;

    invoke-direct {v0}, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f7f\u7528\u6d4b\u8bd5\u7167\u7247\uff0c\u4e0d\u62cd\u7167\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/util/GlobalData;->setUseDebugCamera(Z)V

    return-void
.end method
