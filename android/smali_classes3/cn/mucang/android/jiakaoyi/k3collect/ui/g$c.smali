.class public final Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/ui/g;->v(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/k3collect/i0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3collect/ui/MultilaneCollectItemBinder$onBindViewHolder$1$2",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
        "MapCollectK3_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/k3collect/ui/g;

.field final synthetic d:Lcn/mucang/android/jiakaoyi/framework/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/i0/a;Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;Lcn/mucang/android/jiakaoyi/k3collect/ui/g;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3collect/i0/a;",
            "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;",
            "Lcn/mucang/android/jiakaoyi/k3collect/ui/g;",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->a:Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->c:Lcn/mucang/android/jiakaoyi/k3collect/ui/g;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->a:Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->e(I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->b:Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/databinding/K3ItemMultilaneCollectBinding;->etLineWidth:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->a:Lcn/mucang/android/jiakaoyi/k3collect/i0/a;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/i0/a;->d()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->c:Lcn/mucang/android/jiakaoyi/k3collect/ui/g;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/ui/g$c;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {p1, p3, p2}, Lcn/mucang/android/jiakaoyi/k3collect/ui/g;->n(Lcn/mucang/android/jiakaoyi/k3collect/ui/g;ILcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
