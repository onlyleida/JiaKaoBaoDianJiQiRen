.class public final Lcn/mucang/sundial/library/activity/InputIdCardActivity;
.super Lcn/mucang/sundial/library/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/activity/InputIdCardActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/InputIdCardActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Lkotlin/v;",
        "initView",
        "()V",
        "initData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lme/drakeet/multitype/d;",
        "adapter",
        "Lme/drakeet/multitype/d;",
        "personMode",
        "I",
        "Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;",
        "binding",
        "Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;",
        "Lme/drakeet/multitype/Items;",
        "items",
        "Lme/drakeet/multitype/Items;",
        "<init>",
        "Companion",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/library/activity/InputIdCardActivity$Companion;

.field public static final DELETE:Ljava/lang/String; = "delete"

.field public static final MAX_SPAN_COUNT:I = 0x3


# instance fields
.field private final adapter:Lme/drakeet/multitype/d;

.field private binding:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

.field private final items:Lme/drakeet/multitype/Items;

.field private personMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/library/activity/InputIdCardActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/activity/InputIdCardActivity$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->Companion:Lcn/mucang/sundial/library/activity/InputIdCardActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lme/drakeet/multitype/Items;

    invoke-direct {v0}, Lme/drakeet/multitype/Items;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->items:Lme/drakeet/multitype/Items;

    .line 3
    new-instance v1, Lme/drakeet/multitype/d;

    invoke-direct {v1, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->adapter:Lme/drakeet/multitype/d;

    .line 4
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->personMode:I

    return-void
.end method

.method public static final synthetic access$getPersonMode$p(Lcn/mucang/sundial/library/activity/InputIdCardActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->personMode:I

    return p0
.end method

.method public static final synthetic access$setPersonMode$p(Lcn/mucang/sundial/library/activity/InputIdCardActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->personMode:I

    return-void
.end method

.method private final initView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->inputKeys:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "inputKeys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->adapter:Lme/drakeet/multitype/d;

    new-instance v3, Lcn/mucang/sundial/library/binder/InputKeyBinder;

    new-instance v5, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;

    invoke-direct {v5, v0}, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$1$1;-><init>(Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;)V

    invoke-direct {v3, v5}, Lcn/mucang/sundial/library/binder/InputKeyBinder;-><init>(Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;)V

    .line 4
    const-class v5, Lcn/mucang/sundial/library/entity/InputKeyItem;

    invoke-virtual {v1, v5, v3}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 5
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->inputKeys:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->inputKeys:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v2, Lcn/mucang/sundial/library/widget/GridDividerItemDecoration;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcn/mucang/sundial/library/widget/GridDividerItemDecoration;-><init>(Landroid/content/Context;II)V

    .line 8
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 9
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->inputKeys:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    new-instance v2, Lcn/mucang/sundial/library/widget/GridDividerItemDecoration;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcn/mucang/sundial/library/widget/GridDividerItemDecoration;-><init>(Landroid/content/Context;II)V

    .line 11
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->login:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$$inlined$with$lambda$1;

    invoke-direct {v2, v0, p0}, Lcn/mucang/sundial/library/activity/InputIdCardActivity$initView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;Lcn/mucang/sundial/library/activity/InputIdCardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    const-string v2, "idCardNum"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "id_num"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "intent?.getStringExtra(ExtraKey.idNum) ?: \"\""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_1
    const-string v0, "binding"

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public initData()V
    .locals 12

    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "3"

    const-string v3, "4"

    const-string v4, "5"

    const-string v5, "6"

    const-string v6, "7"

    const-string v7, "8"

    const-string v8, "9"

    const-string v9, "X"

    const-string v10, "0"

    const-string v11, "delete"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->items:Lme/drakeet/multitype/Items;

    new-instance v3, Lcn/mucang/sundial/library/entity/InputKeyItem;

    invoke-direct {v3, v1}, Lcn/mucang/sundial/library/entity/InputKeyItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "person_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->personMode:I

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->idCardNum:Landroid/widget/EditText;

    const-string v0, "binding.idCardNum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 4
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "id_num"

    .line 5
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string p1, "binding"

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p3
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    move-result-object p1

    const-string v0, "TtActivityInputIdCardBin\u2026ayoutInflater.from(this))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->initView()V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/InputIdCardActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityInputIdCardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
