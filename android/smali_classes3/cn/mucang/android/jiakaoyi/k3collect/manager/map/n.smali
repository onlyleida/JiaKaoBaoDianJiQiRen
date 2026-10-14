.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/map/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/n;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/n;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/n;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/n;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->u(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;Ljava/util/List;)V

    return-void
.end method
