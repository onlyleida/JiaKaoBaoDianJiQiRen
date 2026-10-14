.class public final synthetic Lcn/mucang/jiakaoyi/uilib/rule/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/rule/k0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/w;->a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/w;->b:Lcn/mucang/jiakaoyi/uilib/rule/k0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/w;->a:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/w;->b:Lcn/mucang/jiakaoyi/uilib/rule/k0;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/rule/k0;->o(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/jiakaoyi/uilib/rule/k0;Landroid/view/View;)V

    return-void
.end method
