.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/utils/b0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/f;->a:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/f;->a:Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/f;->b:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->d(I)V

    return-void
.end method
