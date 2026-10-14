.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/log/i;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;->b:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;->c:Lcn/mucang/android/jiakaoyi/framework/log/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;->b:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/a;->c:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;->d(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    return-void
.end method
