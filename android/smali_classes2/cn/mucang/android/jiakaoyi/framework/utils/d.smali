.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/utils/s;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/utils/s;Lkotlin/jvm/internal/Ref$IntRef;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d;->a:Lcn/mucang/android/jiakaoyi/framework/utils/s;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d;->a:Lcn/mucang/android/jiakaoyi/framework/utils/s;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/d;->c:J

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->k(Lcn/mucang/android/jiakaoyi/framework/utils/s;Lkotlin/jvm/internal/Ref$IntRef;J)V

    return-void
.end method
