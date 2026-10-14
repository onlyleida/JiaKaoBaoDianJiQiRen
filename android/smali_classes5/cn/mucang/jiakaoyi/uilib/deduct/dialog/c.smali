.class public final synthetic Lcn/mucang/jiakaoyi/uilib/deduct/dialog/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/deduct/dialog/p;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/p;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/c;->a:Lcn/mucang/jiakaoyi/uilib/deduct/dialog/p;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/c;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/c;->a:Lcn/mucang/jiakaoyi/uilib/deduct/dialog/p;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/c;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/p;->r(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/p;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V

    return-void
.end method
