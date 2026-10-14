.class public final Lcn/mucang/android/core/config/mapping/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/config/y/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/config/mapping/l;->d()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/core/config/mapping/ProfileYourProvider$createItemProvider$1",
        "Lcn/mucang/android/core/config/your/YourViewItemProvider;",
        "getView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "core-lib_release"
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
.field final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic b:Lcn/mucang/android/core/config/mapping/l;

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcn/mucang/android/core/config/mapping/l;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcn/mucang/android/core/config/mapping/l;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/mapping/ProfileJsonData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/core/config/mapping/l$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcn/mucang/android/core/config/mapping/l$a;->b:Lcn/mucang/android/core/config/mapping/l;

    iput-object p3, p0, Lcn/mucang/android/core/config/mapping/l$a;->c:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/framework/core/databinding/CoreYourCategoryProfileBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/framework/core/databinding/CoreYourCategoryProfileBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Lcn/mucang/android/framework/core/databinding/CoreYourCategoryProfileBinding;->profileSpinner:Landroid/widget/Spinner;

    const-string v0, "binding.profileSpinner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcn/mucang/android/core/config/mapping/l$a$a;

    iget-object v1, p0, Lcn/mucang/android/core/config/mapping/l$a;->b:Lcn/mucang/android/core/config/mapping/l;

    iget-object v2, p0, Lcn/mucang/android/core/config/mapping/l$a;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/core/config/mapping/l$a$a;-><init>(Lcn/mucang/android/core/config/mapping/l;Ljava/util/List;)V

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5
    new-instance v0, Lcn/mucang/android/core/config/mapping/l$a$b;

    iget-object v1, p0, Lcn/mucang/android/core/config/mapping/l$a;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcn/mucang/android/core/config/mapping/l$a$b;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/config/mapping/l$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/framework/core/databinding/CoreYourCategoryProfileBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
