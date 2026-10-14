.class public final synthetic Lcn/mucang/jiakaoyi/uilib/deduct/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/deduct/z;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Lcn/mucang/jiakaoyi/uilib/deduct/z;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/g;->a:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/g;->b:Lcn/mucang/jiakaoyi/uilib/deduct/z;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/g;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/g;->a:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/g;->b:Lcn/mucang/jiakaoyi/uilib/deduct/z;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/g;->c:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/z;->v(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Lcn/mucang/jiakaoyi/uilib/deduct/z;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method
