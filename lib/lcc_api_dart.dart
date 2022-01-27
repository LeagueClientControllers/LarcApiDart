/// Support for doing something awesome.
///
/// More dartdocs go here.
library lcc_api_dart;

export 'src/i_lcc_api.dart';
export 'src/lcc_api.dart';
export 'src/categories/identity_category.dart';
export 'src/categories/long_poll_category.dart';

export 'src/services/event_service.dart';

export 'src/exceptions/api_method_exception.dart';
export 'src/exceptions/user_not_authorized_exception.dart';
export 'src/exceptions/wrong_access_token_exception.dart';
export 'src/exceptions/wrong_response_exception.dart';

export 'src/model/device/device_type.dart';
export 'src/model/client/gameflow_phase.dart';
export 'src/model/general/api_response.dart';
export 'src/model/general/jwt_payload.dart';
export 'src/model/general/execution_result.dart';
export 'src/model/general/method_error.dart';
export 'src/model/identity/methods/login_parameters.dart';
export 'src/model/long_poll/client_event.dart';
export 'src/model/long_poll/device_event.dart';
export 'src/model/long_poll/event_collection.dart';
export 'src/model/long_poll/long_poll_events_response.dart';
export 'src/model/long_poll/long_poll_parameters.dart';

export 'src/security/user_credentials_storage.dart';

// TODO: Export any libraries intended for clients of this package.
