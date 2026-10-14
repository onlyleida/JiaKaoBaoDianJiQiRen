.class final Lcn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/binder/InputKeyBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/InputKeyItem;)V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "cn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$1$3",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $item$inlined:Lcn/mucang/sundial/library/entity/InputKeyItem;

.field final synthetic this$0:Lcn/mucang/sundial/library/binder/InputKeyBinder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/binder/InputKeyBinder;Lcn/mucang/sundial/library/entity/InputKeyItem;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/binder/InputKeyBinder;

    iput-object p2, p0, Lcn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1;->$item$inlined:Lcn/mucang/sundial/library/entity/InputKeyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1;->this$0:Lcn/mucang/sundial/library/binder/InputKeyBinder;

    invoke-static {p1}, Lcn/mucang/sundial/library/binder/InputKeyBinder;->access$getListener$p(Lcn/mucang/sundial/library/binder/InputKeyBinder;)Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1;->$item$inlined:Lcn/mucang/sundial/library/entity/InputKeyItem;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/InputKeyItem;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;->onClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
