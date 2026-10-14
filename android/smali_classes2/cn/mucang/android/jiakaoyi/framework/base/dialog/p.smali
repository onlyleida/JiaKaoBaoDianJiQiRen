.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;

    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/p;->c:I

    invoke-virtual {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;->d(Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;ILandroid/view/View;)V

    return-void
.end method
