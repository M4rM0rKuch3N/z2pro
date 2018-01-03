.class final Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LEDSettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_SOUND_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 867
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 858
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 857
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 860
    const-string/jumbo v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 859
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    .line 862
    const-string/jumbo v0, "max_notification_enqueue_rate"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 861
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 864
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 863
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 866
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 871
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 873
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 872
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 875
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 874
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 877
    const-string/jumbo v1, "notification_light_pulse_default_color"

    .line 876
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 880
    const-string/jumbo v1, "notification_light_pulse_default_led_on"

    .line 879
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 883
    const-string/jumbo v1, "notification_light_pulse_default_led_off"

    .line 882
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 886
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 885
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 889
    const-string/jumbo v1, "notification_light_pulse_custom_values"

    .line 888
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 891
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 893
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 896
    const-string/jumbo v1, "notification_light_screen_on_enable"

    .line 895
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 899
    const-string/jumbo v1, "notification_light_color_auto"

    .line 898
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 901
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->update(Landroid/net/Uri;)V

    .line 870
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 905
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->update(Landroid/net/Uri;)V

    .line 904
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 909
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 912
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 913
    const-string/jumbo v1, "notification_light_pulse"

    .line 912
    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set8(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 916
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 917
    const-string/jumbo v1, "notification_light_color_auto"

    .line 916
    invoke-static {v0, v1, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set0(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 921
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 922
    const-string/jumbo v4, "notification_light_pulse_default_color"

    .line 923
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 921
    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set2(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 926
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 927
    const-string/jumbo v4, "notification_light_pulse_default_led_on"

    .line 928
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 926
    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set4(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 931
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 932
    const-string/jumbo v4, "notification_light_pulse_default_led_off"

    .line 933
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 931
    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set3(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 936
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 939
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 941
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 940
    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 944
    const-string/jumbo v4, "notification_light_pulse_custom_values"

    .line 943
    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap31(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 947
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 948
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 949
    const-string/jumbo v4, "max_notification_enqueue_rate"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v5

    .line 948
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set7(Lcom/android/server/notification/NotificationManagerService;F)F

    .line 951
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 952
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 953
    const-string/jumbo v4, "notification_sound"

    .line 952
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set11(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 957
    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 958
    const-string/jumbo v5, "notification_light_screen_on_enable"

    .line 959
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 957
    :goto_2
    invoke-static {v0, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    invoke-static {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->-set10(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 961
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LEDSettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap37(Lcom/android/server/notification/NotificationManagerService;)V

    .line 908
    return-void

    :cond_5
    move v1, v3

    .line 912
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 916
    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 959
    goto :goto_2

    :cond_8
    move v2, v3

    .line 957
    goto :goto_3
.end method
