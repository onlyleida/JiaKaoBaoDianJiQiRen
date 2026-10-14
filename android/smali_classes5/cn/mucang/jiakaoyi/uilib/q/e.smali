.class public final synthetic Lcn/mucang/jiakaoyi/uilib/q/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/q/h$b;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/q/e;->a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/q/e;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/e;->a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/q/e;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/q/h;->h(Lcn/mucang/jiakaoyi/uilib/q/h$b;Ljava/io/File;)V

    return-void
.end method
