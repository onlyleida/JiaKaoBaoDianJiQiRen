.class Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$a;
.super Lf/a/a/e/a/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/e/a/b/b<",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$a;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;

    invoke-direct {p0}, Lf/a/a/e/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lf/a/a/e/a/b/b;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$a;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;

    invoke-static {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->a(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;ILcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
