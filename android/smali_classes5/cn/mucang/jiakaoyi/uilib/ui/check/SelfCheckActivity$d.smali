.class public final Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0017\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$onResult1$1",
        "Lcn/mucang/android/jiakaoyi/signal/HardwareInfoManager$OnResult;",
        "onResult",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;",
        "uilib_release"
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u56fa\u4ef6\u5904\u7406\u5b8c\u6210:\u5f97\u5230\u7684obd\u7248\u672c\u4fe1\u606f"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugOta"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$d;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->obdWareDebugInfo:Landroid/widget/TextView;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0\u540e\u7684\u7f13\u5b58\u7684\u56fa\u4ef6\u4fe1\u606f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", \u8bbe\u7f6e\u7684\u8f66\u578b:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
