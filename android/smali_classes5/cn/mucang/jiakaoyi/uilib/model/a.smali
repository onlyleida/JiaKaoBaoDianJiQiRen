.class public final synthetic Lcn/mucang/jiakaoyi/uilib/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/model/e;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/a;->a:Lcn/mucang/jiakaoyi/uilib/model/e;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/model/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/a;->a:Lcn/mucang/jiakaoyi/uilib/model/e;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/model/a;->b:Z

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/e;->d(Z)V

    return-void
.end method
