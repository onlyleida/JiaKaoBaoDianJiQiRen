.class public final Lcn/mucang/jiakaoyi/uilib/siterule/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/siterule/f0;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/siterule/InstructChangeItemBinder$onBindViewHolder$watcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/siterule/f0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;Lcn/mucang/jiakaoyi/uilib/siterule/f0;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/f0$a;->a:Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/f0$a;->b:Lcn/mucang/jiakaoyi/uilib/siterule/f0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/f0$a;->a:Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->stepAliasName:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/f0$a;->b:Lcn/mucang/jiakaoyi/uilib/siterule/f0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/siterule/f0;->n()Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
