.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Ljava/io/File;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/h;->a:[Ljava/io/File;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/h;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/h;->a:[Ljava/io/File;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/h;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->l([Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
