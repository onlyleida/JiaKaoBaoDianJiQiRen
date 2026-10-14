.class public final synthetic Lcn/mucang/jiakaoyi/uilib/deduct/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/deduct/z;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Lcn/mucang/jiakaoyi/uilib/deduct/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/c;->a:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/c;->b:Lcn/mucang/jiakaoyi/uilib/deduct/z;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/c;->a:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/c;->b:Lcn/mucang/jiakaoyi/uilib/deduct/z;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/z;->r(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Lcn/mucang/jiakaoyi/uilib/deduct/z;Landroid/view/View;)V

    return-void
.end method
