.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$ItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$ItemModel;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;",
        "(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "setName",
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


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;->r(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;I)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;Landroid/view/View;)V
    .locals 17

    const-string v0, "$item"

    move-object/from16 v7, p0

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;->a()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v10

    .line 3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v12

    .line 5
    array-length v13, v12

    const/4 v15, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v15, v13, :cond_1

    aget-object v5, v12, v15

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;

    iget-object v3, v5, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a;

    move-object v1, v2

    move-object v14, v2

    move-object v2, v0

    move-object/from16 v16, v0

    move-object v0, v3

    move-object v3, v12

    move-object v7, v4

    move-object/from16 v4, p2

    move-object v8, v5

    move-object/from16 v5, p0

    const/4 v9, 0x1

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-direct {v7, v0, v14}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;)V

    if-ne v10, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_1
    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;->e(Z)V

    .line 8
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, v16

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;-><init>()V

    const-string v1, "\u9009\u62e9\u4fe1\u53f7\u6e90"

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->b(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    invoke-virtual {v0, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->a(Z)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;

    invoke-virtual {v2}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2, v0, v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;[Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;I)V
    .locals 1

    const-string v0, "$carSignalList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v0

    aget-object p1, p1, p5

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V

    .line 2
    invoke-direct {p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;->s(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method private final s(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;->a()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    const-string v2, "carSignal.signalName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;->tv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;->tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;)V

    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;->s(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;

    invoke-virtual {v0}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ExtensionSelectItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/b;

    invoke-direct {v1, p2, p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
