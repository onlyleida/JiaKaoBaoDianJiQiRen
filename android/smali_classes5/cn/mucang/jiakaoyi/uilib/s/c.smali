.class public final synthetic Lcn/mucang/jiakaoyi/uilib/s/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/download/client/c;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/s/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/s/c;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/s/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/s/c;->b:Ljava/io/File;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/s/i;->m(Ljava/lang/String;Ljava/io/File;Ljava/lang/Long;)V

    return-void
.end method
