.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/z/g$a;
.super Lcn/mucang/android/jiakaoyi/k3collect/h0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/z/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachVoiceItemBinder$MyTextWatcher;",
        "Lcn/mucang/android/jiakaoyi/k3collect/listener/WrapperTextWatcher;",
        "(Lcn/mucang/android/jiakaoyi/k3setting/teach/binder/TeachVoiceItemBinder;)V",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/TeachSettingItemTextBinding;",
        "getHolder",
        "()Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "setHolder",
        "(Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;)V",
        "item",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
        "getItem",
        "()Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
        "setItem",
        "(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)V",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "k3setting_release"
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
.field private a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/z/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/h0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/TeachSettingItemTextBinding;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/z/g$a;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->desc:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/z/g$a;->a:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    return-void
.end method
